import 'dart:async';

import '../../../../core/api/client/socket/web_socket_client_impl.dart';

class OrderWebSocketClient extends WebSocketClientImpl {

  @override
  Future<void> setBaseUrl({
    required String host,
    required String apiKey,
  }) async {
    String url =
        'wss://$host/app/$apiKey?protocol=7&client=js&version=7.0.6&flash=false';
    await close();
    init(url);
  }
}
