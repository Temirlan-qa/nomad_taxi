import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';
import '../pay_method/pay_method_entity.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';

@freezed
class OrderEntity extends BaseEntity with _$OrderEntity {
  const factory OrderEntity({
    required String id,
    required String startPoint,
    required String endPoint,
    required int price,
    String? comment,
    required String status,
    required bool hasRoute,
    required String createdAt,
    required PayMethodEntity payMethod,
    required String phone,
    required int townId,
    required List<dynamic> points,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}
