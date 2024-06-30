import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';

part 'pay_method_entity.freezed.dart';
part 'pay_method_entity.g.dart';

@freezed
class PayMethodEntity extends BaseEntity with _$PayMethodEntity {
  const factory PayMethodEntity({
    @JsonKey(name: 'by_cash') required int byCash,
    @JsonKey(name: 'by_bonus') required int byBonus,
  }) = _PayMethodEntity;

  factory PayMethodEntity.fromJson(Map<String, dynamic> json) =>
      _$PayMethodEntityFromJson(json);
}
