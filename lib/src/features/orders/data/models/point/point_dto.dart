import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

part 'point_dto.freezed.dart';
part 'point_dto.g.dart';

@freezed
class PointDto extends BaseDto with _$PointDto {
  const factory PointDto({
    required double lat,
    required double lng,
    required String title,
  }) = _PointDto;

  factory PointDto.fromJson(Map<String, dynamic> json) =>
      _$PointDtoFromJson(json);
}
