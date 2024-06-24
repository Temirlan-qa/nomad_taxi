import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';
import '../../../../core/enums/order_status.dart';

part 'get_order_status_entity.freezed.dart';
part 'get_order_status_entity.g.dart';

@freezed
class GetOrderStatusEntity extends BaseEntity with _$GetOrderStatusEntity {
  const factory GetOrderStatusEntity({
    required int orderId,
    required String status,
  }) = _GetOrderStatusEntity;

  factory GetOrderStatusEntity.fromJson(Map<String, dynamic> json) =>
      _$GetOrderStatusEntityFromJson(json);
}