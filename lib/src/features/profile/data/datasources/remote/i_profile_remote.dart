import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/profile/data/models/profile_dto.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_fcm_token_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_language_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_user_info_request.dart';

abstract class IProfileRemote {
  Future<Either<DomainException, String>> logOut();

  Future<Either<DomainException, ProfileDto>> getUserData();

  Future<Either<DomainException, void>> deleteAccount();

  Future<Either<DomainException, ProfileDto>> updateUserInfo(
    UpdateUserInfoRequest request,
  );

  Future<Either<DomainException, ProfileDto>> updateFcmToken(
    UpdateFcmTokenRequest request,
  );

  Future<Either<DomainException, ProfileDto>> updateLanguage(
    UpdateLanguageRequest request,
  );
}
