
import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/entities/get_order_status_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';

import '../../../orders/data/models/requests/accept_order_request.dart';

abstract interface class IDriverOrderRepository {
  Stream<Either<DomainException, GetOrderStatusResponse>> getOrderStatus(OrderRequest order);
  Stream<Either<DomainException, OrderResponse>> getNewOrder();
}