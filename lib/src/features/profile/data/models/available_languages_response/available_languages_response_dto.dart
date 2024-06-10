import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

import '../language/language_dto.dart';

part 'available_languages_response_dto.freezed.dart';
part 'available_languages_response_dto.g.dart';

@freezed
class AvailableLanguagesResponseDto extends BaseDto
    with _$AvailableLanguagesResponseDto {
  const factory AvailableLanguagesResponseDto({
    required String status,
    required List<LanguageDto> data,
  }) = _AvailableLanguagesResponseDto;

  factory AvailableLanguagesResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AvailableLanguagesResponseDtoFromJson(json);
}
