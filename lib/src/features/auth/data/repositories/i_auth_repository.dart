import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/core/service/auth/models/verify_request.dart';

import '../../../../core/service/auth/models/sign_in_request.dart';
import '../../../../core/service/auth/models/sign_in_response.dart';
import '../../../../core/service/auth/models/verify_response.dart';

abstract class IAuthRepository {
  Future<Either<DomainException, SignInResponse>> loginUser(
    SignInRequest body,
  );
  Future<Either<DomainException, VerifyResponse>> verifyUser(
    VerifyRequest body,
  );
}
