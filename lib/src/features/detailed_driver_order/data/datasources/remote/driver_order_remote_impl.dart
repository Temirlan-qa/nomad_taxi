import 'dart:async';
import 'dart:developer';

import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/data/client/order_web_socket_client.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/data/datasources/remote/i_driver_order.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/data/models/response/get_order_status_dto.dart';

@named
@LazySingleton(as: IDriverOrder)
class DriverOrderRemoteImpl implements IDriverOrder {
  DriverOrderRemoteImpl(this._orderWebSocketClient) {
    _initOrderStatusController();
  }

  final OrderWebSocketClient _orderWebSocketClient;

  late final StreamController<
          Either<DomainException, GetOrderStatusResponseDto>>
      _orderStatusController;

  StreamSubscription? _orderStreamSubscription;

  void _initOrderStatusController() {
    /// This controller alive as long as the app is alive
    _orderStatusController = StreamController<
        Either<DomainException, GetOrderStatusResponseDto>>.broadcast(
      onCancel: () {
        _cancelSubscription();
      },
    );
  }

  void _cancelSubscription() {
    _orderStreamSubscription?.cancel();
  }

  @override
  Stream<Either<DomainException, GetOrderStatusResponseDto>> getOrderStatus() {
    try {
      _orderStreamSubscription ??= _orderWebSocketClient.stream.listen(
        (dto) {
          log('Received event from WebSocket stream: $dto',
              name: 'OrdersRemoteImpl');
          final response =
              GetOrderStatusResponseDto(data: dto.data, status: dto.event);
          _orderStatusController.add(Right(response));
        },
        onError: (error) {
          log('Error in WebSocket stream: $error', name: 'OrdersRemoteImpl');
          _orderStatusController
              .add(Left(UnknownException(message: error.toString())));
        },
      );

      _orderStatusController.stream.listen((event) {
        log('Controller event: $event', name: 'OrdersRemoteImplController');
      });

      return _orderStatusController.stream;
    } catch (e) {
      log('Exception in getOrderStatus: $e', name: 'OrdersRemoteImplCatch');
      return Stream.value(Left(UnknownException(message: e.toString())));
    }
  }
}
