import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/service/auth/auth_service_impl.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/service/auth/i_auth_service.dart';
import '../../../../core/service/auth/models/sign_in_request.dart';
import '../../../../core/service/auth/models/sign_in_response.dart';
import '../../../../core/utils/loggers/logger.dart';
import '../../data/repositories/i_auth_repository.dart';

@named
@LazySingleton(as: IAuthRepository)
class AuthRepositoryImpl implements IAuthRepository {
  final IAuthService _authService;

  AuthRepositoryImpl(@Named.from(AuthServiceImpl) this._authService);

  @override
  Future<Either<DomainException, SignInResponse>> loginUser(
      SignInRequest body) async {
    try {
      Log.e(body.phone);
      final requests = await _authService.loginUser(body);
      return requests.fold(
        (error) => Left(error),
        (response) {
          final SignInResponse result = response;
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e, name: 'AuthRepositoryImpl');
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, SignInResponse>> verifyUser(
      SignInRequest body) async {
    try {
      final requests = await _authService.verifyUser(body);
      return requests.fold(
        (error) => Left(error),
        (response) {
          final SignInResponse result = response;
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
