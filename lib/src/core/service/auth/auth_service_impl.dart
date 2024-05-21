import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/service/auth/i_auth_service.dart';

import '../../api/client/endpoints.dart';
import '../../api/client/rest/rest_client.dart';
import '../../exceptions/domain_exception.dart';
import '../storage_service.dart';
import 'models/sign_in_body.dart';
import 'models/sign_in_response.dart';

class AuthServiceImpl implements IAuthService {
  final RestClient _client;
  final StorageService _storageService;

  AuthServiceImpl(this._client, this._storageService);

  @override
  Future<Either<DomainException, SignInResponse>> loginUser(
      {required SignInBody body}) async {
    var headers = {
      'Accept-Language': 'ru',
      'Accept': 'application/json',
      'Content-Type': 'application/x-www-form-urlencoded'
    };

    final result = await _client.post(
      '${EndPoints.baseUrl}/v1/auth/login',
      data: body.toMap(),
      options: Options(headers: headers),
    );

    return result.fold(
      (l) => Left(l),
      (r) => Right(SignInResponse.fromMap(r.data)),
    );
  }

  @override
  Future<Either<DomainException, SignInResponse>> verifyUser(
      {required SignInBody body}) async {
    var headers = {
      'Accept-Language': 'ru',
      'Accept': 'application/json',
      'Content-Type': 'application/x-www-form-urlencoded'
    };

    final result = await _client.post(
      '${EndPoints.baseUrl}/v1/auth/verify',
      data: body.toMap(),
      options: Options(headers: headers),
    );

    return result.fold(
      (l) => Left(l),
      (r) => Right(SignInResponse.fromMap(r.data)),
    );
  }

  @override
  Future<void> logout() async {
    await _storageService.clear();
  }

  @override
  bool isLoggedIn() {
    return _storageService.checkLoggedIn();
  }
}
