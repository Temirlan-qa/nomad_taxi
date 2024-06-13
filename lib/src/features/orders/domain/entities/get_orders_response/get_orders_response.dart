import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/order/order_entity.dart';

part 'get_orders_response.freezed.dart';
part 'get_orders_response.g.dart';

@freezed
class GetOrdersResponse extends BaseEntity with _$GetOrdersResponse {
  const factory GetOrdersResponse({
    required String status,
     required List<dynamic> data,
  }) = _GetOrdersResponse;

  factory GetOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetOrdersResponseFromJson(json);
}
