import 'package:fpdart/fpdart.dart';

import '../../exceptions/domain_exception.dart';
import 'models/sign_in_request.dart';
import 'models/sign_in_response.dart';

abstract class IAuthService {
  Future<Either<DomainException, SignInResponse>> loginUser(SignInRequest body);
  Future<Either<DomainException, SignInResponse>> verifyUser(
      SignInRequest request);
}
