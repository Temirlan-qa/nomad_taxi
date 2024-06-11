import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/inside_city/inside_city_dto.dart';

import '../support/support_dto.dart';

part 'town_dto.freezed.dart';
part 'town_dto.g.dart';

@freezed
class TownDto extends BaseDto with _$TownDto {
  const factory TownDto({
    required String id,
    required String title,
    required String status,
    required double lat,
    required double lng,
    required int radius,
    @JsonKey(name: 'language_code') String? languageCode,
    SupportDto? support,
    @JsonKey(name: 'inside_city') InsideCityDto? insideCity,
  }) = _TownDto;

  factory TownDto.fromJson(Map<String, dynamic> json) =>
      _$TownDtoFromJson(json);
}
