import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

part 'promocode_dto.freezed.dart';
part 'promocode_dto.g.dart';

@freezed
class PromocodeDto extends BaseDto with _$PromocodeDto {
  const factory PromocodeDto({
    required int amount,
    required String description,
  }) = _PromocodeDto;

  factory PromocodeDto.fromJson(Map<String, dynamic> json) =>
      _$PromocodeDtoFromJson(json);
}
