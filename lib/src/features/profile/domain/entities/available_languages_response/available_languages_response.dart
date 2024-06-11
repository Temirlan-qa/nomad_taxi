import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/language/language_entity.dart';

part 'available_languages_response.freezed.dart';
part 'available_languages_response.g.dart';

@freezed
class AvailableLanguagesResponse extends BaseEntity
    with _$AvailableLanguagesResponse {
  const factory AvailableLanguagesResponse({
    required String status,
    required List<LanguageEntity> data,
  }) = _AvailableLanguagesResponse;

  factory AvailableLanguagesResponse.fromJson(Map<String, dynamic> json) =>
      _$AvailableLanguagesResponseFromJson(json);
}
