import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';

part 'tariff_entity.freezed.dart';
part 'tariff_entity.g.dart';

@freezed
class TariffEntity extends BaseEntity with _$TariffEntity {
  const factory TariffEntity({
    required String title,
    required String description,
    required int commission,
  }) = _TariffEntity;

  factory TariffEntity.fromJson(Map<String, dynamic> json) =>
      _$TariffEntityFromJson(json);
}
