import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/features/order_search/data/models/searched_order_address_dto.dart';

import '../../../../../src/core/base/base_models/base_dto.dart';

part 'searched_order_dto.freezed.dart';
part 'searched_order_dto.g.dart';

@freezed
class SearchedOrderDto extends BaseDto with _$SearchedOrderDto {
  const factory SearchedOrderDto({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "data") List<SearchedOrderAddressDto>? data,
  }) = _SearchedOrderDto;

  factory SearchedOrderDto.fromJson(Map<String, dynamic> json) =>
      _$SearchedOrderDtoFromJson(json);
}
