import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/order/order_entity.dart';

part 'orders_response.freezed.dart';
part 'orders_response.g.dart';

@freezed
class OrdersResponse extends BaseEntity with _$OrdersResponse {
  const factory OrdersResponse({
    required List<OrderEntity> orders,
  }) = _OrdersResponse;

  factory OrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$OrdersResponseFromJson(json);
}
