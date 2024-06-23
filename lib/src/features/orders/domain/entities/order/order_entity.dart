import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/pay_method/pay_method_entity.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/point/point_entity.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/partner/partner.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';

@freezed
class OrderEntity extends BaseEntity with _$OrderEntity {
  const factory OrderEntity({
    @Default(0) int id,
    required String startPoint,
    required String endPoint,
    required String routeType,
    required int price,
    String? comment,
    String? status,
    @Default(false) bool hasRoute,
    @Default('') String createdAt,
    @JsonKey(name: 'pay_method') PayMethodEntity? payMethod,
    @Default('') String phone,
    Partner? partner,
    int? waitingTime,
    int? townId,
    @Default([]) List<PointEntity> points,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}
