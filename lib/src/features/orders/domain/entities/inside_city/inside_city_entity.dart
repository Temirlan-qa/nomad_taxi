import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';

part 'inside_city_entity.freezed.dart';
part 'inside_city_entity.g.dart';

@freezed
class InsideCityEntity extends BaseEntity with _$InsideCityEntity {
  const factory InsideCityEntity({
    required int minPrice,
    required int maxPrice,
    required int commission,
  }) = _InsideCityEntity;

  factory InsideCityEntity.fromJson(Map<String, dynamic> json) =>
      _$InsideCityEntityFromJson(json);
}
