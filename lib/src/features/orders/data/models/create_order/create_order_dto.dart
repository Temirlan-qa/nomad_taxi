import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

part 'create_order_dto.freezed.dart';
part 'create_order_dto.g.dart';

@freezed
class CreateOrderDto extends BaseDto with _$CreateOrderDto {
  const factory CreateOrderDto({
    @JsonKey(name: 'town_id') required String townId,
    required int price,
    @JsonKey(name: 'points[0][lat]') required double startPointLat,
    @JsonKey(name: 'points[0][lng]') required double startPointLng,
    @JsonKey(name: 'points[0][title]') required String startPointTitle,
    @JsonKey(name: 'points[1][lat]') required double endPointLat,
    @JsonKey(name: 'points[1][lng]') required double endPointLng,
    @JsonKey(name: 'points[1][title]') required String endPointTitle,
    @JsonKey(name: 'use_bonus') required int useBonus,
  }) = _CreateOrderDto;

  factory CreateOrderDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderDtoFromJson(json);
}
