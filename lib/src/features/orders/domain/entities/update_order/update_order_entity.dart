import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';

part 'update_order_entity.freezed.dart';
part 'update_order_entity.g.dart';

@freezed
class UpdateOrderEntity extends BaseEntity with _$UpdateOrderEntity {
  const factory UpdateOrderEntity({
    required int price,
  }) = _UpdateOrderEntity;

  factory UpdateOrderEntity.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderEntityFromJson(json);
}
