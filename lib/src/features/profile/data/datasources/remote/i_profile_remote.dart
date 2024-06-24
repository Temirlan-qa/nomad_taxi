import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/profile/data/models/available_languages_response/available_languages_response_dto.dart';
import 'package:nomad_taxi/src/features/profile/data/models/profile_dto.dart';
import 'package:nomad_taxi/src/features/profile/data/models/promocode_response/promocode_response_dto.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/activate_promocode_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_fcm_token_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_language_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_user_info_request.dart';

import '../../../domain/requests/update_partner_data_request.dart';

abstract class IProfileRemote {
  Future<Either<DomainException, String>> logOut();

  Future<Either<DomainException, ProfileDto>> getUserData();

  Future<Either<DomainException, bool>> deleteAccount();

  Future<Either<DomainException, ProfileDto>> updateUserInfo(
    UpdateUserInfoRequest request,
  );

  Future<Either<DomainException, ProfileDto>> updateFcmToken(
    UpdateFcmTokenRequest request,
  );

  Future<Either<DomainException, ProfileDto>> updateLanguage(
    UpdateLanguageRequest request,
  );

  Future<Either<DomainException, ProfileDto>> togglePartnerStatus();

  Future<Either<DomainException, ProfileDto>> updatePartnerData(
    UpdatePartnerDataRequest request,
  );

  Future<Either<DomainException, String>> withdrawInfo();

  Future<Either<DomainException, String>> payInfo();

  Future<Either<DomainException, AvailableLanguagesResponseDto>>
      getAvailableLanguages();

  Future<Either<DomainException, PromocodeResponseDto>> activatePromocode(
    ActivatePromocodeRequest request,
  );
}
