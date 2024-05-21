import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';

import '../../../../core/service/auth/models/sign_in_body.dart';
import '../../../../core/service/auth/models/sign_in_response.dart';

abstract class IAuthRepository {
  Future<Either<DomainException, SignInResponse>> loginUser(
      {required SignInBody body});
  Future<Either<DomainException, SignInResponse>> verifyUser(
      {required SignInBody body});
  Future<void> logout();
  bool isLoggedIn();
}
