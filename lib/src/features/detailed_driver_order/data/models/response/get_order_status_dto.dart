import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/data/models/response/order_status_data_dto.dart';

import '../../../../../core/enums/order_status.dart';

part 'get_order_status_dto.freezed.dart';
part 'get_order_status_dto.g.dart';

@freezed
class GetOrderStatusResponseDto extends BaseDto
    with _$GetOrderStatusResponseDto {
  const factory GetOrderStatusResponseDto({
    required int orderId,
    required OrderStatus status,
  }) = _GetOrderStatusResponseDto;

  factory GetOrderStatusResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetOrderStatusResponseDtoFromJson(json);
}
