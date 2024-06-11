import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

part 'inside_city_dto.freezed.dart';
part 'inside_city_dto.g.dart';

@freezed
class InsideCityDto extends BaseDto with _$InsideCityDto {
  const factory InsideCityDto({
    @JsonKey(name: 'min_price') required int minPrice,
    @JsonKey(name: 'max_price') required int maxPrice,
    required int commission,
  }) = _InsideCityDto;

  factory InsideCityDto.fromJson(Map<String, dynamic> json) =>
      _$InsideCityDtoFromJson(json);
}
