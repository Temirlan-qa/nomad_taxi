import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';

part 'create_order_entity.freezed.dart';
part 'create_order_entity.g.dart';

@freezed
class CreateOrderEntity extends BaseEntity with _$CreateOrderEntity {
  const factory CreateOrderEntity({
    required String townId,
    required int price,
    required int useBonus,
    required double startPointLat,
    required double startPointLng,
    required String startPointTitle,
    required double endPointLat,
    required double endPointLng,
    required String endPointTitle,
  }) = _CreateOrderEntity;

  factory CreateOrderEntity.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderEntityFromJson(json);
}
