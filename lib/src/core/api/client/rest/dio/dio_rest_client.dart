import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../exception/domain_exception.dart';
import '../../../../utils/loggers/logger.dart';
import '../rest_client.dart';
import 'dio_exception.dart';

part 'dio_config.dart';
part 'dio_interceptor.dart';

abstract class DioRestClient implements RestClient {
  late final Dio dio;

  @override
  void setBaseUrl({
    required String ipAddress,
    required int port,
  }) {
    try {
      dio.options = dio.options.copyWith(
        baseUrl: 'http://$ipAddress:$port',
      );
      log('dio: ${dio.options.baseUrl}', name: 'DioRestClient');
    } catch (e) {
      dio.options = dio.options.copyWith(baseUrl: '');
    }
  }

  // Get:-----------------------------------------------------------------------
  @override
  Future<Either<DomainException, Response>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, st) {
      return Left(_handleError(e, st));
    }
  }

  // Post:----------------------------------------------------------------------
  @override
  Future<Either<DomainException, Response>> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, st) {
      return Left(_handleError(e, st));
    }
  }

  // Put:-----------------------------------------------------------------------
  @override
  Future<Either<DomainException, Response>> put(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await dio.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, st) {
      return Left(_handleError(e, st));
    }
  }

  // Delete:--------------------------------------------------------------------
  @override
  Future<Either<DomainException, Response>> delete(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await dio.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return Right(response);
    } catch (e, st) {
      return Left(_handleError(e, st));
    }
  }

  DomainException _handleError(e, StackTrace st) {
    if (e is DioException) {
      return _handleDioException(e, st);
    }
    return UnknownException();
  }

  DomainException _handleDioException(
    DioException e,
    StackTrace st,
  ) {
    final String errorMessage = DioExceptions.fromDioError(e).toString();
    return NetworkException(message: errorMessage, stackTrace: st);
  }
}
