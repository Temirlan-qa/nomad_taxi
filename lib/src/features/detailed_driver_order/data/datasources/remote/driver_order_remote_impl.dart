import 'dart:async';

import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/data/client/order_web_socket_client.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/data/datasources/remote/i_driver_order.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/data/models/response/get_order_status_dto.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';

@named
@LazySingleton(as: IDriverOrder)
class DriverOrderRemoteImpl implements IDriverOrder {
  DriverOrderRemoteImpl(this._orderWebSocketClient) {
    _initOrderStatusController();
  }

  final OrderWebSocketClient _orderWebSocketClient;

  late final StreamController<Either<DomainException, OrderResponse>>
      _orderController;

  StreamSubscription? _orderStatusStreamSubscription;

  StreamSubscription? _orderStreamSubscription;

  void _initOrderStatusController() {
    /// This controller alive as long as the app is alive
    _orderController =
        StreamController<Either<DomainException, OrderResponse>>.broadcast(
      onCancel: _cancelAllSubscriptions,
    );
  }

  void _cancelAllSubscriptions() {
    _orderStatusStreamSubscription?.cancel();
    _orderStreamSubscription?.cancel();
  }

  @override
  Stream<Either<DomainException, GetOrderStatusResponseDto>> getOrderStatus() {
    return Stream.value(Left(UnknownException(message: '')));
    // try {
    //   _orderStatusStreamSubscription ??= _orderWebSocketClient.stream.listen(
    //     (dto) {
    //       final response =
    //           GetOrderStatusResponseDto(data: dto.data, status: dto.event);
    //       _orderStatusController.add(Right(response));
    //     },
    //     onError: (error) {
    //       _orderStatusController
    //           .add(Left(UnknownException(message: error.toString())));
    //     },
    //     onDone: () {
    //       _orderStatusController.close();
    //     },
    //   );
    //   return _orderStatusController.stream;
    // } catch (e) {
    //   return Stream.value(Left(UnknownException(message: e.toString())));
    // }
  }

  @override
  Stream<Either<DomainException, OrderResponse>> getNewOrder() {
    try {

      _orderStreamSubscription ??= _orderWebSocketClient.orderStream.listen(
        (event) {
          _orderController.add(Right(event));
        },
        onError: (error) {
          _orderController
              .add(Left(UnknownException(message: error.toString())));
        },
        onDone: () {
          _orderController.close();
        },
      );

      return _orderController.stream;
    } catch (e) {
      return Stream.value(Left(UnknownException(message: e.toString())));
    }
  }
}
