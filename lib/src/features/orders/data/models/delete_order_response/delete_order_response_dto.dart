import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

part 'delete_order_response_dto.freezed.dart';
part 'delete_order_response_dto.g.dart';

@freezed
class DeleteOrderResponseDto extends BaseDto with _$DeleteOrderResponseDto {
  const factory DeleteOrderResponseDto({
    required String status,
    required String message,
  }) = _DeleteOrderResponseDto;

  factory DeleteOrderResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteOrderResponseDtoFromJson(json);
}
