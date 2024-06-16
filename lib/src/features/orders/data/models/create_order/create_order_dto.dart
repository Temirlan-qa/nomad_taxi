import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

import '../point/point_dto.dart';

part 'create_order_dto.freezed.dart';
part 'create_order_dto.g.dart';

@freezed
class CreateOrderDto extends BaseDto with _$CreateOrderDto {
  const factory CreateOrderDto({
     @JsonKey(name: 'town_id') required String townId,
    required int price,
    required List<PointDto> points,
    @JsonKey(name: 'use_bonus') required int useBonus,
  }) = _CreateOrderDto;

  factory CreateOrderDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderDtoFromJson(json);
}
