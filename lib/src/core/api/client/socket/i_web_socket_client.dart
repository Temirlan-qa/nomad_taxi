import '../../../dtos/web_socket_dto.dart';

abstract interface class IWebSocketClient {
  Stream<WebSocketDto> get stream;
  Future<void> close();
  Future<void> setBaseUrl({required String host, required String apiKey});
}
