import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

part 'cashback_info_dto.freezed.dart';
part 'cashback_info_dto.g.dart';

@freezed
class CashbackInfoDto extends BaseDto with _$CashbackInfoDto {
  const factory CashbackInfoDto({
    required int id,
    required int cashback,
    @JsonKey(name: "max_amount") required int maxAmount,
    @JsonKey(name: "expires_at") required String expiresAt,
  }) = _CashbackInfoDto;

  factory CashbackInfoDto.fromJson(Map<String, dynamic> json) =>
      _$CashbackInfoDtoFromJson(json);
}
