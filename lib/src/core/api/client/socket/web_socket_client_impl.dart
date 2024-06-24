import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:nomad_taxi/src/features/orders/domain/entities/order/order_entity.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../../../features/detailed_driver_order/domain/entities/get_order_status_entity.dart';
import '../../../../features/detailed_driver_order/domain/entities/get_order_status_response.dart';
import '../../../utils/loggers/logger.dart';
import 'i_web_socket_client.dart';

abstract class WebSocketClientImpl implements IWebSocketClient {
  WebSocket? _ws;
  WebSocketChannel? _webSocketChannel;

  final StreamController<GetOrderStatusResponse> _orderStatusController =
      StreamController<GetOrderStatusResponse>.broadcast();

  final StreamController<OrderResponse> _orderController =
      StreamController<OrderResponse>.broadcast();
  StreamSubscription? _wsSubscription;

  OrderEntity? _lastOrder;

  @override
  Stream<GetOrderStatusResponse> get orderStatusStream =>
      _orderStatusController.stream;

  @override
  Stream<OrderResponse> get orderStream =>
      _orderController.stream.distinct((prev, current) => prev == current);

  Future<void> init(String url) async {
    try {
      _ws = await WebSocket.connect(url);
      _subscribeToNewOrderChannel('new-order');
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
        _orderStatusController.close();
        _orderController.close();
        await close();
      },
      onError: (error) {
        _orderStatusController.addError(error);
        _orderController.addError(error);
      },
      cancelOnError: false,
    );
  }

  void _onData(event) {
    try {
      if (_orderStatusController.isClosed && _orderController.isClosed) {
        return;
      }
      if (event == null) {
        return;
      }

      final Map<String, dynamic> map =
          jsonDecode(event) as Map<String, dynamic>;

      final eventDataString = map['data'];

      if (map['channel'] == 'new-order') {
        final Map<String, dynamic> eventDataMap = jsonDecode(eventDataString);

        final OrderEntity order = OrderEntity.fromJson(eventDataMap);

        if (_lastOrder == null || _lastOrder != order) {
          _lastOrder = order;
          _orderController.add(OrderResponse(order: order));
        }
      }

      if (map['event'] == 'App\\Events\\Websocket\\Order\\OrderStatusChanged') {
        final Map<String, dynamic> eventDataMap = jsonDecode(eventDataString);
        final some = eventDataMap;
        log('$some', name: 'ResponseOrderStatus');

        final GetOrderStatusEntity orderStatus =
            GetOrderStatusEntity.fromJson(eventDataMap);

        final GetOrderStatusResponse orderStatusResponse =
            GetOrderStatusResponse(order: orderStatus);

        _orderStatusController.add(orderStatusResponse);
      }
    } catch (_) {
      return;
    }
  }

  Future<void> _subscribeToNewOrderChannel(String channel) async {
    final subscribeMessage = {
      "event": "pusher:subscribe",
      "data": {"channel": channel}
    };
    _ws?.add(jsonEncode(subscribeMessage));
  }

  Future<void> sendOrderRequest(int orderId) async {
    _subscribeToOrderStatus(orderId);
  }

  Future<void> _subscribeToOrderStatus(int orderId) async {
    final subscribeMessage = {
      "event": "pusher:subscribe",
      "data": {"channel": "orders.$orderId"}
    };
    _ws?.add(jsonEncode(subscribeMessage));
  }

  @override
  Future<void> close() async {
    try {
      await _ws?.close();
      _webSocketChannel = null;
      _wsSubscription?.cancel();
      _wsSubscription = null;
    } catch (e) {
      Log.e(e, name: 'WebSocketClient close');
    }
  }
}
