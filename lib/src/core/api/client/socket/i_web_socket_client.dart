import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';

import '../../../dtos/web_socket_dto.dart';

abstract interface class IWebSocketClient {
  Stream<WebSocketDto> get stream;
  Stream<OrderResponse> get orderStream;
  Future<void> close();
  Future<void> getOrderStatus({required String host, required String apiKey});
  Future<void> getNewOrder({required String host, required String apiKey});
}
