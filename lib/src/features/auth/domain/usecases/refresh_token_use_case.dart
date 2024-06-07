import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_request.dart';
import 'package:nomad_taxi/src/core/service/auth/models/verify_response.dart';
import 'package:nomad_taxi/src/features/auth/data/repositories/i_auth_repository.dart';
import 'package:nomad_taxi/src/features/auth/domain/repositories/auth_repository_impl.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class RefreshTokenUseCase extends UseCase<VerifyResponse, BaseRequest> {
  final IAuthRepository _authRepository;

  RefreshTokenUseCase(@Named.from(AuthRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, VerifyResponse>> execute(requestModel) async =>
      _authRepository.refreshToken();
}
