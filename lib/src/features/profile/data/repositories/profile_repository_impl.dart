import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/utils/loggers/logger.dart';
import 'package:nomad_taxi/src/features/profile/data/datasources/remote/i_profile_remote.dart';
import 'package:nomad_taxi/src/features/profile/data/datasources/remote/profile_remote_impl.dart';
import 'package:nomad_taxi/src/features/profile/data/mappers/profile_dto_mapper.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/profile_entity.dart';
import 'package:nomad_taxi/src/features/profile/domain/repositories/i_profile_repository.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_fcm_token_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_language_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_user_info_request.dart';

import '../../../../core/exceptions/domain_exception.dart';

@named
@LazySingleton(as: IProfileRepository)
class ProfileRepositoryImpl implements IProfileRepository {
  final IProfileRemote _profileImpl;
  ProfileRepositoryImpl(@Named.from(ProfileRemoteImpl) this._profileImpl);

  @override
  Future<Either<DomainException, void>> deleteAccount() {
    // TODO: implement deleteAccount
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, String>> logOut() async {
    try {
      final requests = await _profileImpl.logOut();
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, ProfileEntity>> updateUserInfo(
      UpdateUserInfoRequest request) async {
    try {
      final requests = await _profileImpl.updateUserInfo(request);
      return requests.fold(
        (error) => Left(error),
        (signUpDto) {
          final ProfileEntity result = ProfileDtoMapper().map(signUpDto);
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, ProfileEntity>> getUserData() async {
    try {
      final result = await _profileImpl.getUserData();
      return result.fold(
        (error) => Left(error),
        (dto) {
          final ProfileEntity entity = ProfileDtoMapper().map(dto);
          return Right(entity);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, ProfileEntity>> updateFcmToken(
      UpdateFcmTokenRequest request) async {
    try {
      final requests = await _profileImpl.updateFcmToken(request);
      return requests.fold(
        (error) => Left(error),
        (dto) {
          final ProfileEntity result = ProfileDtoMapper().map(dto);
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, ProfileEntity>> updateLanguage(
      UpdateLanguageRequest request) async {
    try {
      final requests = await _profileImpl.updateLanguage(request);
      return requests.fold(
        (error) => Left(error),
        (dto) {
          final ProfileEntity result = ProfileDtoMapper().map(dto);
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
