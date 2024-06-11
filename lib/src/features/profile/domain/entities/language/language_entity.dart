import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';

part 'language_entity.freezed.dart';
part 'language_entity.g.dart';

@freezed
class LanguageEntity extends BaseEntity with _$LanguageEntity {
  const factory LanguageEntity({
    required String code,
    required String title,
  }) = _LanguageEntity;

  factory LanguageEntity.fromJson(Map<String, dynamic> json) =>
      _$LanguageEntityFromJson(json);
}
