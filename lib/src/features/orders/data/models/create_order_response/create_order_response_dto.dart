import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/order/order_dto.dart';

part 'create_order_response_dto.freezed.dart';
part 'create_order_response_dto.g.dart';

@freezed
class CreateOrderResponseDto extends BaseDto with _$CreateOrderResponseDto {
  const factory CreateOrderResponseDto({
    required OrderDto data,
  }) = _CreateOrderResponseDto;

  factory CreateOrderResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseDtoFromJson(json);
}
