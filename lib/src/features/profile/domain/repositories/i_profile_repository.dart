import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/profile_entity.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_fcm_token_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_language_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_user_info_request.dart';

import '../../../../core/exceptions/domain_exception.dart';

abstract class IProfileRepository {
  Future<Either<DomainException, String>> logOut();

  Future<Either<DomainException, void>> deleteAccount();

  Future<Either<DomainException, ProfileEntity>> updateUserInfo(
    UpdateUserInfoRequest request,
  );

  Future<Either<DomainException, ProfileEntity>> getUserData();

  Future<Either<DomainException, ProfileEntity>> updateFcmToken(
    UpdateFcmTokenRequest request,
  );

  Future<Either<DomainException, ProfileEntity>> updateLanguage(
    UpdateLanguageRequest request,
  );
}
