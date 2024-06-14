import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';
import '../../../../profile/domain/entities/partner/partner.dart';
import '../pay_method/pay_method_entity.dart';
import '../point/point_entity.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';

@freezed
class OrderEntity extends BaseEntity with _$OrderEntity {
  const factory OrderEntity({
    required int id,
    @JsonKey(name: 'start_point') required String startPoint,
    @JsonKey(name: 'end_point') required String endPoint,
    required int price,
    String? comment,
    required String status,
    @Default(false) @JsonKey(name: 'has_route') bool hasRoute,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'pay_method') required PayMethodEntity payMethod,
    required String phone,
    Partner? partner,
    int? waitingTime,
    @JsonKey(name: 'town_id') required int townId,
    required List<PointEntity> points,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}


// @freezed
// class OrderEntity extends BaseEntity with _$OrderEntity {
//   const factory OrderEntity({
//     required int id,
//     required String startPoint,
//     required String endPoint,
//     required int price,
//     String? comment,
//     required String status,
//     @Default(false) bool hasRoute,
//     required String createdAt,
//     required PayMethodEntity payMethod,
//     required String phone,
//     Partner? partner,
//     int? waitingTime,
//     required int townId,
//     required List<PointEntity> points,
//   }) = _OrderEntity;

//   factory OrderEntity.fromJson(Map<String, dynamic> json) =>
//       _$OrderEntityFromJson(json);
// }