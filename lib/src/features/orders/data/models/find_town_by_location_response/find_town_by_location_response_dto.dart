import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

import '../town/town_dto.dart';

part 'find_town_by_location_response_dto.freezed.dart';
part 'find_town_by_location_response_dto.g.dart';

@freezed
class FindTownByLocationResponseDto extends BaseDto
    with _$FindTownByLocationResponseDto {
  const factory FindTownByLocationResponseDto({
    required String status,
    required TownDto data,
  }) = _FindTownByLocationResponseDto;

  factory FindTownByLocationResponseDto.fromJson(Map<String, dynamic> json) =>
      _$FindTownByLocationResponseDtoFromJson(json);
}
