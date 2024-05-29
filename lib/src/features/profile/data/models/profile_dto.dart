import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../src/core/base/base_models/base_dto.dart';
import 'partner/partner_dto.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

@freezed
class ProfileDto extends BaseDto with _$ProfileDto {
  const factory ProfileDto({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String phone,
    required int id,
    @JsonKey(name: 'language_code') String? languageCode,
    @JsonKey(name: 'is_blocked') int? isBlocked,
    @JsonKey(name: 'fcm_token') String? fcmToken,
    int? bonus,
    PartnerDto? partner,
  }) = _ProfileDto;

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
}
