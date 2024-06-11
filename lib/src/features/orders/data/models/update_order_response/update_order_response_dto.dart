import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

import '../order/order_dto.dart';

part 'update_order_response_dto.freezed.dart';
part 'update_order_response_dto.g.dart';

@freezed
class UpdateOrderResponseDto extends BaseDto with _$UpdateOrderResponseDto {
  const factory UpdateOrderResponseDto({
    required String status,
    required OrderDto message,
  }) = _UpdateOrderResponseDto;

  factory UpdateOrderResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderResponseDtoFromJson(json);
}
