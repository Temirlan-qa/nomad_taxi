import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';

import '../../../../features/detailed_driver_order/domain/entities/get_order_status_response.dart';

abstract interface class IWebSocketClient {
  Stream<GetOrderStatusResponse> get orderStatusStream;
  Stream<OrderResponse> get orderStream;
  Future<void> close();
  Future<void> getOrderStatus({required int orderId});
  Future<void> setBaseUrl({required String host, required String apiKey});
}
