import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

part 'cashback_info.freezed.dart';
part 'cashback_info.g.dart';

@freezed
class CashbackInfo extends BaseDto with _$CashbackInfo {
  const factory CashbackInfo({
    required int id,
    required int cashback,
    @JsonKey(name: "max_amount") required int maxAmount,
    @JsonKey(name: "expires_at") required String expiresAt,
  }) = _CashbackInfo;

  factory CashbackInfo.fromJson(Map<String, dynamic> json) =>
      _$CashbackInfoFromJson(json);
}
