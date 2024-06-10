import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';

part 'point_entity.freezed.dart';
part 'point_entity.g.dart';

@freezed
class PointEntity extends BaseEntity with _$PointEntity {
  const factory PointEntity({
    required double lat,
    required double lng,
    required String title,
  }) = _PointEntity;

  factory PointEntity.fromJson(Map<String, dynamic> json) =>
      _$PointEntityFromJson(json);
}
