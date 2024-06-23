
import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/entities/get_order_status_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';

abstract interface class IDriverOrderRepository {
  Stream<Either<DomainException, GetOrderStatusResponse>> getOrderStatus();
  Stream<Either<DomainException, OrderResponse>> getNewOrder();
}