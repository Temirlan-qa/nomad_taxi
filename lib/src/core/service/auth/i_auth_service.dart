import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/service/auth/models/verify_request.dart';
import 'package:nomad_taxi/src/core/service/auth/models/verify_response.dart';

import '../../exceptions/domain_exception.dart';
import 'models/resend_code_request.dart';
import 'models/resend_code_response.dart';
import 'models/sign_in_request.dart';
import 'models/sign_in_response.dart';

abstract class IAuthService {
  Future<Either<DomainException, SignInResponse>> loginUser(SignInRequest body);
  Future<Either<DomainException, VerifyResponse>> verifyUser(
      VerifyRequest request);

  Future<Either<DomainException, VerifyResponse>> refreshToken();

  Future<Either<DomainException, ResendCodeResponse>> resendCode(
      ResendCodeRequest request);
}
