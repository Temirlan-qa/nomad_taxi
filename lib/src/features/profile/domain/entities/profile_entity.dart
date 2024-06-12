import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../src/core/base/base_models/base_entity.dart';
import 'partner/partner.dart';

part 'profile_entity.freezed.dart';
part 'profile_entity.g.dart';

@freezed
class ProfileEntity extends BaseEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required String firstName,
    required String lastName,
    required String phone,
    required int id,
    String? languageCode,
    int? isBlocked,
    int? bonus,
    String? fcmToken,

    // partner info
    int? pId,
    String? pFirstName,
    String? pLastName,
    String? pCarModel,
    String? pCarNumber,
    int? pTownId,
    String? pStatus,
    int? pBalance,
    int? pBonus,
  }) = _ProfileEntity;

  factory ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileEntityFromJson(json);
}
