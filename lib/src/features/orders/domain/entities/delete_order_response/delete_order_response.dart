import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';

part 'delete_order_response.freezed.dart';
part 'delete_order_response.g.dart';

@freezed
class DeleteOrderResponse extends BaseEntity with _$DeleteOrderResponse {
  const factory DeleteOrderResponse({
    required String status,
    required String message,
  }) = _DeleteOrderResponse;

  factory DeleteOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteOrderResponseFromJson(json);
}
