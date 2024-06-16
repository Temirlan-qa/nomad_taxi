import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';

import '../point/point_entity.dart';

part 'create_order_entity.freezed.dart';
part 'create_order_entity.g.dart';

@freezed
class CreateOrderEntity extends BaseEntity with _$CreateOrderEntity {
  const factory CreateOrderEntity({
    required String townId,
    required int price,
    required List<PointEntity> points,
    required int useBonus,
  }) = _CreateOrderEntity;

  factory CreateOrderEntity.empty({
    @Default('8') String townId,
    @Default(777) int price,
    @Default([
      PointEntity(lat: 42.2222, lng: 77.2222, title: 'Bay'),
      PointEntity(lat: 32.3333, lng: 66.3333, title: 'Abay')
    ])
    List<PointEntity> points,
    @Default(1) int useBonus,
  }) = _CreateOrderEntityEmpty;

  factory CreateOrderEntity.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderEntityFromJson(json);
}
