import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

part 'update_order_dto.freezed.dart';
part 'update_order_dto.g.dart';

@freezed
class UpdateOrderDto extends BaseDto with _$UpdateOrderDto {
  const factory UpdateOrderDto({
    required int price,
  }) = _UpdateOrderDto;

  factory UpdateOrderDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderDtoFromJson(json);
}
