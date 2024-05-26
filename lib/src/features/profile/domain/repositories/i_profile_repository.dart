import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/exception/domain_exception.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/profile_entity.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_user_info_request.dart';

abstract class IProfileRepository {
  Future<Either<DomainException, String>> logOut();

  Future<Either<DomainException, void>> deleteAccount();

  Future<Either<DomainException, ProfileEntity>> updateUserInfo(
    UpdateUserInfoRequest request,
  );

  Future<Either<DomainException, ProfileEntity>> getUserData();
}
