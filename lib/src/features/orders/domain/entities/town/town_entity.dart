import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';
import '../inside_city/inside_city_entity.dart';
import '../support/support_entity.dart';

part 'town_entity.freezed.dart';
part 'town_entity.g.dart';

@freezed
class TownEntity extends BaseEntity with _$TownEntity {
  const factory TownEntity({
    required int id,
    required String title,
    required String status,
    required String lat,
    required String lng,
    required int radius,
    required String franchiseLink,
    String? languageCode,
    SupportEntity? support,
    InsideCityEntity? insideCity,
  }) = _TownEntity;

  factory TownEntity.fromJson(Map<String, dynamic> json) =>
      _$TownEntityFromJson(json);
}
