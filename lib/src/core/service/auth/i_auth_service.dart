import 'package:fpdart/fpdart.dart';

import '../../exceptions/domain_exception.dart';
import 'models/sign_in_body.dart';
import 'models/sign_in_response.dart';

abstract class IAuthService {
  Future<Either<DomainException, SignInResponse>> loginUser(
      {required SignInBody body});
  Future<Either<DomainException, SignInResponse>> verifyUser(
      {required SignInBody body});
  Future<void> logout();
  bool isLoggedIn();
}
