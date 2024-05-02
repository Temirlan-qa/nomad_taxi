// ignore_for_file: constant_pattern_never_matches_value_type

import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  DioExceptions.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        message = 'cancelRequest';
        break;
      case DioExceptionType.connectionTimeout:
        message = 'connectionTimeout';
        break;
      case DioExceptionType.receiveTimeout:
        message = 'receiveTimeout';
        break;
      case DioExceptionType.badResponse:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;
      case DioExceptionType.sendTimeout:
        message = 'sendTimeout';
        break;
      case DioExceptionType.unknown:
        if (dioError.message == null) {
          message = 'unexpected Error';
          break;
        }

        if (dioError.message!.contains('SocketException')) {
          message = 'no Internet Connection';
          break;
        }

        message = 'unexpected Error';
        break;
      default:
        message = 'unexpected Error';
        break;
    }
  }
  late String message;

  String _handleError(int? statusCode, Error error) {
    switch (statusCode) {
      case 400:
        return '$statusCode badRequest';
      case 401:
        return '$statusCode unauthorized';
      case 403:
        return '$statusCode forbidden';
      case 404:
        return '$statusCode $error';
      case 500:
        return '$statusCode internal Server Error';
      case 502:
        return '$statusCode badGateway';
      default:
        return '$statusCode unexpected Error';
    }
  }

  @override
  String toString() => message;
}
