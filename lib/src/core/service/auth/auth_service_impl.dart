import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/api/client/endpoints.dart';
import 'package:nomad_taxi/src/core/api/client/rest/dio/dio_client.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/core/service/auth/i_auth_service.dart';
import 'package:nomad_taxi/src/core/service/auth/models/sign_in_request.dart';
import 'package:nomad_taxi/src/core/service/auth/models/sign_in_response.dart';

@named
@LazySingleton(as: IAuthService)
class AuthServiceImpl implements IAuthService {
  AuthServiceImpl(this.client);

  final DioRestClient client;

  @override
  Future<Either<DomainException, SignInResponse>> loginUser(
      SignInRequest request) async {
    var headers = {'Content-Type': 'application/json'};
    var data = json.encode({"phone": "77476133356"});
    var dio = Dio();
    var response = await dio.request(
      'https://auyltaxi.kz/api/v1/auth/login',
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    );

    if (response.statusCode == 200) {
      print(json.encode(response.data));
      return Right(SignInResponse.fromJson(response.data));
    } else {
      print(response.statusMessage);
      return Left(UnknownException(message: response.statusMessage));
    }
    // log('Login request: ${request.phone}');
    // try {
    //   final Either<DomainException, Response> response = await client.post(
    //     'https://auyltaxi.kz/api/v1/auth/login',
    //     data: {"phone": request.phone},
    //   );

    //   log('Login response: $response');

    //   return response.fold(
    //     (error) {
    //       log('Login error: $error');
    //       return Left(error);
    //     },
    //     (result) {
    //       log('Login result: ${result.data}');
    //       if (result.statusCode == 200) {
    //         try {
    //           final signInResponse = SignInResponse.fromJson(result.data);
    //           return Right(signInResponse);
    //         } catch (e) {
    //           log('Parsing error: $e');
    //           return Left(
    //               UnknownException(message: 'Failed to parse response'));
    //         }
    //       } else {
    //         log('Unexpected status code: ${result.statusCode}');
    //         return Left(UnknownException(
    //             message: 'Unexpected status code: ${result.statusCode}'));
    //       }
    //     },
    //   );
    // } catch (e) {
    //   log('Exception caught during login: $e');
    //   return Left(
    //       e is DomainException ? e : UnknownException(message: e.toString()));
    // }
  }

  @override
  Future<Either<DomainException, SignInResponse>> verifyUser(
      SignInRequest request) async {
    log('Verify request: ${request.phone}');
    try {
      final Either<DomainException, Response> response = await client.post(
        '${EndPoints.baseUrl}/v1/auth/verify',
        data: request.toJson(),
      );

      log('Verify response: $response');

      return response.fold(
        (error) {
          log('Verify error: $error');
          return Left(error);
        },
        (result) {
          log('Verify result: ${result.data}');
          if (result.statusCode == 200) {
            try {
              final signInResponse = SignInResponse.fromJson(result.data);
              return Right(signInResponse);
            } catch (e) {
              log('Parsing error: $e');
              return Left(
                  UnknownException(message: 'Failed to parse response'));
            }
          } else {
            log('Unexpected status code: ${result.statusCode}');
            return Left(UnknownException(
                message: 'Unexpected status code: ${result.statusCode}'));
          }
        },
      );
    } catch (e) {
      log('Exception caught during verification: $e');
      return Left(
          e is DomainException ? e : UnknownException(message: e.toString()));
    }
  }
}
