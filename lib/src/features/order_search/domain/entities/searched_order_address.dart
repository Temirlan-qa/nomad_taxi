import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';

part 'searched_order_address.freezed.dart';
part 'searched_order_address.g.dart';

@freezed
class SearchedOrderAddressEntity extends BaseEntity
    with _$SearchedOrderAddressEntity {
  const factory SearchedOrderAddressEntity({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "town") String? town,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "lat") double? lat,
    @JsonKey(name: "lng") double? lng,
  }) = _SearchedOrderAddressEntity;

  factory SearchedOrderAddressEntity.fromJson(Map<String, dynamic> json) =>
      _$SearchedOrderAddressEntityFromJson(json);
}
