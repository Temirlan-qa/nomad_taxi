import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

part 'tariff_dto.freezed.dart';
part 'tariff_dto.g.dart';

@freezed
class TariffDto extends BaseDto with _$TariffDto {
  const factory TariffDto({
    required String title,
    required String description,
    required int commission,
  }) = _TariffDto;

  factory TariffDto.fromJson(Map<String, dynamic> json) =>
      _$TariffDtoFromJson(json);
}
