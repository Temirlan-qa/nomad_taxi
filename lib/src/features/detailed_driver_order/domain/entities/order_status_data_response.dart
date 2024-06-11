import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_status_data_response.freezed.dart';
part 'order_status_data_response.g.dart';

@freezed
class OrderStatusDataResponse extends BaseEntity with _$OrderStatusDataResponse {
  const factory OrderStatusDataResponse({
    required String socketId,
    required int activityTimeout,
  }) = _OrderStatusDataResponse;

  factory OrderStatusDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusDataResponseFromJson(json);
}