import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_dto.dart';
import '../finance/finance_dto.dart';

part 'partner_dto.freezed.dart';
part 'partner_dto.g.dart';

@freezed
class PartnerDto extends BaseDto with _$PartnerDto {
  const factory PartnerDto({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'car_model') required String carModel,
    @JsonKey(name: 'car_number') required String carNumber,
    @JsonKey(name: 'town_id') required int townId,
    required String status,
    required FinanceDto finance,
  }) = _PartnerDto;

  factory PartnerDto.fromJson(Map<String, dynamic> json) =>
      _$PartnerDtoFromJson(json);
}
