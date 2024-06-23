import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

part 'searched_order_address_dto.freezed.dart';
part 'searched_order_address_dto.g.dart';

@freezed
class SearchedOrderAddressDto extends BaseDto with _$SearchedOrderAddressDto {
  const factory SearchedOrderAddressDto({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "town") String? town,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "lat") double? lat,
    @JsonKey(name: "lng") double? lng,
  }) = _SearchedOrderAddressDto;

  factory SearchedOrderAddressDto.fromJson(Map<String, dynamic> json) =>
      _$SearchedOrderAddressDtoFromJson(json);
}
