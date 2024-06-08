import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/features/auth/data/repositories/i_auth_repository.dart';
import 'package:nomad_taxi/src/features/auth/domain/repositories/auth_repository_impl.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/service/auth/models/resend_code_request.dart';
import '../../../../core/service/auth/models/resend_code_response.dart';

@lazySingleton
class ResendCodeUseCase extends UseCase<ResendCodeResponse, ResendCodeRequest> {
  final IAuthRepository _authRepository;

  ResendCodeUseCase(@Named.from(AuthRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, ResendCodeResponse>> execute(
          ResendCodeRequest requestModel) async =>
      _authRepository.resendCode(requestModel);
}
