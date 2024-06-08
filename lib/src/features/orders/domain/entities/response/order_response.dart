import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/order/order_entity.dart';

part 'order_response.freezed.dart';
part 'order_response.g.dart';

@freezed
class OrderResponse extends BaseEntity with _$OrderResponse {
  const factory OrderResponse({
    required String status,
    required OrderEntity data,
  }) = _OrderResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);
}
