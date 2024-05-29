import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_dto.dart';
import '../finance/finance_dto.dart';

part 'partner_dto.freezed.dart';
part 'partner_dto.g.dart';

@freezed
class PartnerDto extends BaseDto with _$PartnerDto {
  const factory PartnerDto({
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'car_model') String? carModel,
    @JsonKey(name: 'car_number') String? carNumber,
    @JsonKey(name: 'town_id') int? townId,
    String? status,
    FinanceDto? finance,
  }) = _PartnerDto;

  factory PartnerDto.fromJson(Map<String, dynamic> json) =>
      _$PartnerDtoFromJson(json);
}
