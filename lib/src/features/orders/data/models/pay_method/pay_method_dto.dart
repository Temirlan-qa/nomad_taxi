import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

part 'pay_method_dto.freezed.dart';
part 'pay_method_dto.g.dart';

@freezed
class PayMethodDto extends BaseDto with _$PayMethodDto {
  const factory PayMethodDto({
    @Default('') String id,
    @JsonKey(name: 'by_cash') required int byCash,
    @JsonKey(name: 'by_bonus') required int byBonus,
  }) = _PayMethodDto;

  factory PayMethodDto.fromJson(Map<String, dynamic> json) =>
      _$PayMethodDtoFromJson(json);
}
