import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/data/models/response/get_order_status_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/requests/accept_order_request.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import '../../../domain/entities/get_order_status_response.dart';


abstract interface class IDriverOrder {
  Stream<Either<DomainException, GetOrderStatusResponse>> getOrderStatus(OrderRequest requestModel);

  Stream<Either<DomainException, OrderResponse>> getNewOrder();
}
