import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';
import '../finance/finance.dart';

part 'partner.freezed.dart';
part 'partner.g.dart';

@freezed
class Partner extends BaseEntity with _$Partner {
  const factory Partner({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String phone,
    @JsonKey(name: 'bank_card_number') String? bankCardNumber,
    @JsonKey(name: 'car_model') required String carModel,
    @JsonKey(name: 'car_number') required String carNumber,
  }) = _Partner;

  factory Partner.fromJson(Map<String, dynamic> json) =>
      _$PartnerFromJson(json);

  const factory Partner.empty({
    @Default(false) bool empty,
    @Default(false) bool sorted,
    @Default(false) bool unsorted,
  }) = _PartnerEmpty;
}
