import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';
import '../finance/finance.dart';

part 'partner.freezed.dart';
part 'partner.g.dart';

@freezed
class Partner extends BaseEntity with _$Partner {
  const factory Partner({
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'car_model') String? carModel,
    @JsonKey(name: 'car_number') String? carNumber,
    @JsonKey(name: 'town_id') int? townId,
    String? status,
    Finance? finance,
  }) = _Partner;

  factory Partner.fromJson(Map<String, dynamic> json) =>
      _$PartnerFromJson(json);
}
