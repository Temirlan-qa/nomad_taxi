import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';

@freezed
class OrderEntity extends BaseEntity with _$OrderEntity {
  const factory OrderEntity({
    required int id,
    required String startPoint,
    required String endPoint,
    required int price,
    String? comment,
    required String status,
    required bool hasRoute,
    // required String createdAt,
    // required PayMethodEntity payMethod,
    // required String phone,
    // Partner? partner,
    // int? waitingTime,
    // required int townId,
    // required List<PointEntity> points,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}
