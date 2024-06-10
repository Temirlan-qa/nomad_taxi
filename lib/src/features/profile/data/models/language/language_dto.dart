import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

part 'language_dto.freezed.dart';
part 'language_dto.g.dart';

@freezed
class LanguageDto extends BaseDto with _$LanguageDto {
  const factory LanguageDto({
    required String code,
    required String title,
  }) = _LanguageDto;

  factory LanguageDto.fromJson(Map<String, dynamic> json) =>
      _$LanguageDtoFromJson(json);
}
