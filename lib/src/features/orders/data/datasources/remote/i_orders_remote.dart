import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/orders/data/models/get_orders_response/get_orders_response_dto.dart';

import '../../models/order/order_dto.dart';

abstract class IOrdersRemote {
  Future<Either<DomainException, OrderDto>> acceptOrder(
    String orderId,
  );

  Future<Either<DomainException, OrderDto>> cancelOrder(
    String orderId,
  );

  Future<Either<DomainException, OrderDto>> completeOrder(
    String orderId,
  );

  Future<Either<DomainException, OrderDto>> startRoute(
    String orderId,
  );

  Future<Either<DomainException, GetOrdersResponseDto>> getOrders();

  Future<Either<DomainException, OrderDto>> waitingForClient(
    String orderId,
  );
}
