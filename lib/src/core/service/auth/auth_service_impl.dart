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
import 'package:nomad_taxi/src/core/service/auth/models/verify_request.dart';
import 'package:nomad_taxi/src/core/service/auth/models/verify_response.dart';

import '../storage/storage_service_impl.dart';

@named
@LazySingleton(as: IAuthService)
class AuthServiceImpl implements IAuthService {
  AuthServiceImpl(this.client);

  final DioRestClient client;

  @override
  Future<Either<DomainException, SignInResponse>> loginUser(
      SignInRequest request) async {
    var headers = {'Content-Type': 'application/json'};
    var data = json.encode({"phone": request.phone.toString()});
    var dio = Dio();

    var response = await dio.request(
      'https://auyltaxi.kz/api/v1/auth/login',
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    );

    var st = StorageServiceImpl();

    if (response.statusCode == 200) {
      print(json.encode(response.data));
      st.setToken(
          SignInResponse.fromJson(response.data).data.userId.toString());
      log('XXX');
      log(SignInResponse.fromJson(response.data).data.userId.toString());
      log(st.getToken()!);
      log('YYY');
      return Right(SignInResponse.fromJson(response.data));
    } else {
      print(response.statusMessage);
      return Left(UnknownException(message: response.statusMessage));
    }
  }

  @override
  Future<Either<DomainException, VerifyResponse>> verifyUser(
      VerifyRequest request) async {
    try {
      var dio = Dio();

      var response = await dio.request(
        '${EndPoints.baseUrl}/v1/auth/verify',
        options: Options(
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: VerifyRequest(
          userId: request.userId,
          code: request.code,
        ),
      );

      var st = StorageServiceImpl();

      log('Verify response: $response');

      if (response.statusCode == 200) {
        st.setToken(VerifyResponse.fromJson(response.data).data.accessToken);
        log('token set');
        log(VerifyResponse.fromJson(response.data).data.accessToken);
        log(st.getToken()!);
        return Right(VerifyResponse.fromJson(response.data));
      } else {
        return Left(UnknownException(message: response.statusMessage));
      }
    } catch (e) {
      log('Exception caught during verification: $e');
      return Left(
          e is DomainException ? e : UnknownException(message: e.toString()));
    }
  }
}
