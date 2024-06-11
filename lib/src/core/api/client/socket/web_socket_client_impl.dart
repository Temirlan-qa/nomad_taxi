import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../../../features/detailed_driver_order/data/models/response/order_status_data_dto.dart';
import '../../../dtos/web_socket_dto.dart';
import '../../../utils/loggers/logger.dart';
import 'i_web_socket_client.dart';

abstract class WebSocketClientImpl implements IWebSocketClient {
  WebSocket? _ws;

  WebSocketChannel? _webSocketChannel;

  final StreamController<WebSocketDto> _controller =
      StreamController<WebSocketDto>.broadcast();

  WebSocketChannel? get webSocketChannel => _webSocketChannel;

  StreamSubscription? _wsSubscription;

  @override
  Stream<WebSocketDto> get stream => _controller.stream;

  Future<void> init(String url) async {
    try {
      _ws = await WebSocket.connect(url);
      if (_ws != null) {
        _initListeners(url);
        _webSocketChannel = IOWebSocketChannel(_ws!);
      }
    } catch (e) {
      await Future.delayed(const Duration(seconds: 5));
      await init(url);
    }
  }

  void _initListeners(String url) {
    _wsSubscription = _ws?.listen(
      (event) {
        _onData(event);
      },
      onDone: () async {
        _controller.close();
        await close();
      },
      onError: (error) {
        _controller.addError(error);
      },
      cancelOnError: false,
    );
  }

  void _onData(event) {
    try {
      if (_controller.isClosed) {
        return;
      }
      if (event == null) {
        return;
      }

      final Map<String, dynamic> map =
          jsonDecode(event) as Map<String, dynamic>;

      final eventDataString = map['data'] as String;
      final Map<String, dynamic> eventDataMap = jsonDecode(eventDataString);

      final WebSocketDto webSocketDto = WebSocketDto(
        event: map['event'] as String,
        data: OrderStatusDataDto.fromJson(eventDataMap),
      );

      _controller.add(webSocketDto);
    } catch (e) {
      Log.e(e, name: 'WebSocketClient onData');
    }
  }

  @override
  Future<void> close() async {
    try {
      await _ws?.close();
      _webSocketChannel = null;
      _wsSubscription?.cancel();
    } catch (e) {
      Log.e(e, name: 'WebSocketClient close');
    }
  }
}
