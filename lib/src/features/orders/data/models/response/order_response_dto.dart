import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/order/order_dto.dart';

part 'order_response_dto.freezed.dart';
part 'order_response_dto.g.dart';

@freezed
class OrderResponseDto extends BaseDto with _$OrderResponseDto {
  const factory OrderResponseDto({
    required String status,
    required OrderDto data,
  }) = _OrderResponseDto;

  factory OrderResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseDtoFromJson(json);
}
