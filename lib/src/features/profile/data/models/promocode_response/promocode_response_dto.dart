import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';
import 'package:nomad_taxi/src/features/profile/data/models/promocode/promocode_dto.dart';

import '../language/language_dto.dart';

part 'promocode_response_dto.freezed.dart';
part 'promocode_response_dto.g.dart';

@freezed
class PromocodeResponseDto extends BaseDto with _$PromocodeResponseDto {
  const factory PromocodeResponseDto({
    required bool success,
    required PromocodeDto data,
  }) = _PromocodeResponseDto;

  factory PromocodeResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PromocodeResponseDtoFromJson(json);
}
