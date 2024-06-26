import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/service/auth/models/sign_in_request.dart';
import 'package:nomad_taxi/src/core/service/auth/models/sign_in_response.dart';
import 'package:nomad_taxi/src/features/auth/data/repositories/i_auth_repository.dart';
import 'package:nomad_taxi/src/features/auth/domain/repositories/auth_repository_impl.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class LoginUseCase extends UseCase<SignInResponse, SignInRequest> {
  final IAuthRepository _authRepository;

  LoginUseCase(@Named.from(AuthRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, SignInResponse>> execute(
          SignInRequest requestModel) async =>
      _authRepository.loginUser(requestModel);
}
