import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/order/order_entity.dart';

part 'update_order_response.freezed.dart';
part 'update_order_response.g.dart';

@freezed
class UpdateOrderResponse extends BaseEntity with _$UpdateOrderResponse {
  const factory UpdateOrderResponse({
    required String status,
    required OrderEntity message,
  }) = _UpdateOrderResponse;

  factory UpdateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderResponseFromJson(json);
}
