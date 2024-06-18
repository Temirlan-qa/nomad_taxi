import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';

part 'promocode_entity.freezed.dart';
part 'promocode_entity.g.dart';

@freezed
class PromocodeEntity extends BaseEntity with _$PromocodeEntity {
  const factory PromocodeEntity({
    required int amount,
    required String description,
  }) = _PromocodeEntity;

  factory PromocodeEntity.fromJson(Map<String, dynamic> json) =>
      _$PromocodeEntityFromJson(json);
}
