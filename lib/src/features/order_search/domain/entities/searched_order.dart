import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';
import 'package:nomad_taxi/src/features/order_search/domain/entities/searched_order_address.dart';

part 'searched_order.freezed.dart';
part 'searched_order.g.dart';

@freezed
class SearchedOrderEntity extends BaseEntity with _$SearchedOrderEntity {
  const factory SearchedOrderEntity({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "data") List<SearchedOrderAddressEntity>? data,
  }) = _SearchedOrderEntity;

  factory SearchedOrderEntity.fromJson(Map<String, dynamic> json) =>
      _$SearchedOrderEntityFromJson(json);
}
