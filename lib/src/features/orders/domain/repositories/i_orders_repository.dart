import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/get_orders_response/get_orders_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';

import '../../../../core/exceptions/domain_exception.dart';

abstract class IOrdersRepository {
  Future<Either<DomainException, GetOrdersResponse>> getOrders();

  Future<Either<DomainException, OrderResponse>> acceptOrder(
    String orderId,
  );

  Future<Either<DomainException, OrderResponse>> cancelOrder(
    String orderId,
  );

  Future<Either<DomainException, OrderResponse>> waitingForClient(
    String orderId,
  );

  Future<Either<DomainException, OrderResponse>> startRoute(
    String orderId,
  );

  Future<Either<DomainException, OrderResponse>> completeOrder(
    String orderId,
  );
}
