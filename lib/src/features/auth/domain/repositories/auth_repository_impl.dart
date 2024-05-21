import 'package:fpdart/fpdart.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/service/auth/i_auth_service.dart';
import '../../../../core/service/auth/models/sign_in_body.dart';
import '../../../../core/service/auth/models/sign_in_response.dart';
import '../../data/repositories/i_auth_repository.dart';

class AuthRepositoryImpl implements IAuthRepository {
  final IAuthService _authService;

  AuthRepositoryImpl(this._authService);

  @override
  Future<Either<DomainException, SignInResponse>> loginUser(
      {required SignInBody body}) {
    return _authService.loginUser(body: body);
  }

  @override
  Future<Either<DomainException, SignInResponse>> verifyUser(
      {required SignInBody body}) {
    return _authService.verifyUser(body: body);
  }

  @override
  Future<void> logout() {
    return _authService.logout();
  }

  @override
  bool isLoggedIn() {
    return _authService.isLoggedIn();
  }
}
