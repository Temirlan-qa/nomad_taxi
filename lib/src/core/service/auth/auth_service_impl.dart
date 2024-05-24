import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/api/client/rest/dio/dio_client.dart';
import 'package:nomad_taxi/src/core/service/auth/i_auth_service.dart';

import '../../api/client/endpoints.dart';
import '../../exceptions/domain_exception.dart';
import 'models/sign_in_request.dart';
import 'models/sign_in_response.dart';

@named
@LazySingleton(as: IAuthService)
class AuthServiceImpl implements IAuthService {
  AuthServiceImpl(
    this.client,
  );
  final DioRestClient client;

  @override
  Future<Either<DomainException, SignInResponse>> loginUser(
      SignInRequest request) async {
    log(request.phone);
    try {
      final Either<DomainException, Response> response =
          await client.post('https://auyltaxi.kz/api/v1/auth/login', data: {
        "phone": request.phone,
      });

      log(response.toString());

      response.fold(
        (error) => Left(error),
        (result) {
          if (result.statusCode == 200) {
            return Right(
              result.data,
            );
          }
          return Left(UnknownException());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, SignInResponse>> verifyUser(
      SignInRequest request) async {
    try {
      final Either<DomainException, Response> response = await client
          .post('${EndPoints.baseUrl}/v1/auth/verify', data: request.toJson());

      response.fold(
        (error) => Left(error),
        (result) {
          if (result.statusCode == 200) {
            return Right(
              result.data,
            );
          }
          return Left(UnknownException());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
    throw UnimplementedError();
  }
}
