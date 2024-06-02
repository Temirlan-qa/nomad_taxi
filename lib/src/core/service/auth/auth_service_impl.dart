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
import 'package:nomad_taxi/src/core/service/auth/models/verify_request.dart';
import 'package:nomad_taxi/src/core/service/auth/models/verify_response.dart';

import '../storage/storage_service_impl.dart';

@named
@LazySingleton(as: IAuthService)
class AuthServiceImpl implements IAuthService {
  AuthServiceImpl(this.client);

  final DioRestClient client;
  final StorageServiceImpl st = StorageServiceImpl();
  final Map<String, String> headers = {'Content-Type': 'application/json'};

  @override
  Future<Either<DomainException, SignInResponse>> loginUser(
      SignInRequest request) async {
    st.deleteToken();
    final Either<DomainException, Response<dynamic>> response =
        await client.post(
      EndPoints.login,
      data: request,
      options: Options(
        method: 'POST',
        headers: headers,
      ),
    );

    return response.fold(
      (error) => Left(error),
      (response) async {
        if (response.statusCode == 200) {
          await st.setToken(
              '${SignInResponse.fromJson(response.data).data.userId}');
          return Right(SignInResponse.fromJson(response.data));
        } else {
          return Left(UnknownException(message: response.statusMessage));
        }
      },
    );
  }

  @override
  Future<Either<DomainException, VerifyResponse>> verifyUser(
      VerifyRequest request) async {
    try {
      final Either<DomainException, Response<dynamic>> response =
          await client.post(
        EndPoints.verify,
        data: VerifyRequest(
          userId: request.userId,
          code: request.code,
        ),
        options: Options(
          method: 'POST',
          headers: headers,
        ),
      );

      return response.fold(
        (error) => Left(error),
        (response) async {
          if (response.statusCode == 200) {
            await st.deleteToken();
            final String token =
                VerifyResponse.fromJson(response.data).data.accessToken;
            await st.setToken(token);
            return Right(VerifyResponse.fromJson(response.data));
          } else {
            return Left(UnknownException(message: response.statusMessage));
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
