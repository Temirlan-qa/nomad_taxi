import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';

part 'support_entity.freezed.dart';
part 'support_entity.g.dart';

@freezed
class SupportEntity extends BaseEntity with _$SupportEntity {
  const factory SupportEntity({
    required String phone,
    required String feedback,
  }) = _SupportEntity;

  factory SupportEntity.fromJson(Map<String, dynamic> json) =>
      _$SupportEntityFromJson(json);
}
