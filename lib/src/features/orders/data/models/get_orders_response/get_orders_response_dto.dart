import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/order/order_dto.dart';

part 'get_orders_response_dto.freezed.dart';
part 'get_orders_response_dto.g.dart';

@freezed
class GetOrdersResponseDto extends BaseDto with _$GetOrdersResponseDto {
  const factory GetOrdersResponseDto({
    required String status,
    required List<dynamic> data,
  }) = _GetOrdersResponseDto;

  factory GetOrdersResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetOrdersResponseDtoFromJson(json);
}
