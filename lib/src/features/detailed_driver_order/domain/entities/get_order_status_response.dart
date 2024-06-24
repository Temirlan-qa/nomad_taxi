import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/entities/order_status_data_response.dart';

import '../../../../core/enums/order_status.dart';
import 'get_order_status_entity.dart';

part 'get_order_status_response.freezed.dart';
part 'get_order_status_response.g.dart';

@freezed
class GetOrderStatusResponse extends BaseEntity with _$GetOrderStatusResponse {
  const factory GetOrderStatusResponse({
    required GetOrderStatusEntity order,
  }) = _GetOrderStatusResponse;

  factory GetOrderStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$GetOrderStatusResponseFromJson(json);
}
