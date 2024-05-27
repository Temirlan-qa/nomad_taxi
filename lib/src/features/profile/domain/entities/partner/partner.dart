import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';
import '../finance/finance.dart';

part 'partner.freezed.dart';
part 'partner.g.dart';

@freezed
class Partner extends BaseEntity with _$Partner {
  const factory Partner({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'car_model') required String carModel,
    @JsonKey(name: 'car_number') required String carNumber,
    @JsonKey(name: 'town_id') required int townId,
    required String status,
    required Finance finance,
  }) = _Partner;

  factory Partner.fromJson(Map<String, dynamic> json) =>
      _$PartnerFromJson(json);
}
