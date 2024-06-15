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
    required String startPoint,
    required String endPoint,
    required int price,
    String? comment,
    required String status,
    @Default(false)  bool hasRoute,
    @Default('')  String createdAt,
    @JsonKey(name: 'pay_method') PayMethodEntity? payMethod,
    @Default('') String phone,
    Partner? partner,
    int? waitingTime,
    @Default(0)  int townId,
    @Default([]) List<PointEntity> points,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}