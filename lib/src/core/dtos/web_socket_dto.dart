import 'package:freezed_annotation/freezed_annotation.dart';

import '../../features/detailed_driver_order/data/models/response/order_status_data_dto.dart';

part 'web_socket_dto.freezed.dart';
part 'web_socket_dto.g.dart';

@freezed
class WebSocketDto with _$WebSocketDto {
  factory WebSocketDto({
    required String event,
    required OrderStatusDataDto data,
  }) = _WebSocketDto;

  factory WebSocketDto.fromJson(Map<String, dynamic> json) =>
      _$WebSocketDtoFromJson(json);
}
