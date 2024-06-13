import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/point/point_entity.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/partner/partner.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';
import '../pay_method/pay_method_entity.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';

@freezed
class OrderEntity extends BaseEntity with _$OrderEntity {
  const factory OrderEntity({
    @Default(0) int id,
    @Default('')String   startPoint,
    @Default('')String   endPoint,
    @Default(0) int price,
    @Default('')String? comment,
    @Default('')String status,
    @Default(false) bool hasRoute,
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
