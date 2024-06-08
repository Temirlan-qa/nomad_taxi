import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/orders/data/models/get_orders_response/get_orders_response_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/response/order_response_dto.dart';

abstract class IOrdersRemote {
  Future<Either<DomainException, OrderResponseDto>> acceptOrder(
    String orderId,
  );

  Future<Either<DomainException, OrderResponseDto>> cancelOrder(
    String orderId,
  );

  Future<Either<DomainException, OrderResponseDto>> completeOrder(
    String orderId,
  );

  Future<Either<DomainException, OrderResponseDto>> startRoute(
    String orderId,
  );

  Future<Either<DomainException, GetOrdersResponseDto>> getOrders();

  Future<Either<DomainException, OrderResponseDto>> waitingForClient(
    String orderId,
  );
}
