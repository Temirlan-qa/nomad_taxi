import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

part 'order_status_data_dto.freezed.dart';
part 'order_status_data_dto.g.dart';

@freezed
class OrderStatusDataDto extends BaseDto with _$OrderStatusDataDto {
  const factory OrderStatusDataDto({
    @JsonKey(name: 'socket_id') required String socketId,
    @JsonKey(name: 'activity_timeout') required int activityTimeout,
  }) = _OrderStatusDataDto;

  factory OrderStatusDataDto.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusDataDtoFromJson(json);
}
