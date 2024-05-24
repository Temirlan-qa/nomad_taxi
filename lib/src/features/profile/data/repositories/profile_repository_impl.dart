import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/utils/loggers/logger.dart';
import 'package:nomad_taxi/src/features/profile/data/datasources/remote/i_profile_remote.dart';
import 'package:nomad_taxi/src/features/profile/data/datasources/remote/radionets_remote_impl.dart';
import 'package:nomad_taxi/src/features/profile/data/mappers/country_code_dto_to_entity_mapper.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/profile_entity.dart';
import 'package:nomad_taxi/src/features/profile/domain/repositories/i_profile_remote.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_user_info_request.dart';

import '../../../../core/exceptions/domain_exception.dart';

@named
@LazySingleton(as: IProfileRepository)
class ProfileRepositoryImpl implements IProfileRepository {
  final IProfileRemote _profileImpl;
  ProfileRepositoryImpl(@Named.from(ProfileRemoteImpl) this._profileImpl);

  @override
  Future<Either<DomainException, ProfileEntity>> deleteAccount() {
    // TODO: implement deleteAccount
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, ProfileEntity>> logOut() async {
    try {
      final requests = await _profileImpl.logOut();
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
}
