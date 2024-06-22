import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/features/main/domain/models/find_town_id_request.dart';
import 'package:nomad_taxi/src/features/orders/data/models/requests/create_order_request.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/create_order_response/create_order_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/find_town_by_location_response/find_town_by_location_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/orders_response/orders_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/update_order_response.dart/update_order_response.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../data/models/requests/accept_order_request.dart';
import '../entities/delete_order_response/delete_order_response.dart';
import '../entities/update_order/update_order_entity.dart';

abstract class IOrdersRepository {
  Future<Either<DomainException, OrdersResponse>> getOrders();

  Future<Either<DomainException, OrderResponse>> acceptOrder(
    OrderRequest request,
  );

  Future<Either<DomainException, void>> cancelOrder(
    OrderRequest order,
  );

  Future<Either<DomainException, void>> waitingForClient(
    OrderRequest order,
  );

  Future<Either<DomainException, void>> startRoute(
    OrderRequest order,
  );

  Future<Either<DomainException, void>> completeOrder(
    OrderRequest order,
  );

  Future<Either<DomainException, OrderResponse>> createOrder(
    CreateOrderRequest request,
  );

  Future<Either<DomainException, CreateOrderResponse>> getOrder(
    OrderRequest order,
  );

  Future<Either<DomainException, UpdateOrderResponse>> updateOrder(
    UpdateOrderEntity request,
    OrderRequest order,
  );

  Future<Either<DomainException, DeleteOrderResponse>> deleteOrder(
    OrderRequest order,
  );

  Future<Either<DomainException, FindTownByLocationResponse>>
      findTownByLocation(FindTownIdRequest requestModel);
}
