import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/main/domain/models/find_town_id_request.dart';
import 'package:nomad_taxi/src/features/orders/data/models/create_order_response/create_order_response_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/delete_order_response/delete_order_response_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/find_town_by_location_response/find_town_by_location_response_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/order/order_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/orders_dto/orders_dto.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/update_order/update_order_entity.dart';

import '../../models/requests/accept_order_request.dart';
import '../../models/requests/create_order_request.dart';
import '../../models/update_order_response/update_order_response_dto.dart';

abstract class IOrdersRemote {
  Future<Either<DomainException, OrderDto>> acceptOrder(
    OrderRequest request,
  );

  Future<Either<DomainException, void>> cancelOrder(
    OrderRequest order,
  );

  Future<Either<DomainException, void>> completeOrder(
    OrderRequest order,
  );

  Future<Either<DomainException, void>> startRoute(
    OrderRequest order,
  );

  Future<Either<DomainException, OrdersDto>> getOrders();

  Future<Either<DomainException, void>> waitingForClient(
    OrderRequest order,
  );

  Future<Either<DomainException, OrderResponse>> createOrder(
    CreateOrderRequest request,
  );

  Future<Either<DomainException, OrderResponse>> getOrder(
    OrderRequest order,
  );

  Future<Either<DomainException, UpdateOrderResponseDto>> updateOrder(
    UpdateOrderEntity request,
    OrderRequest order,
  );

  Future<Either<DomainException, DeleteOrderResponseDto>> deleteOrder(
    OrderRequest order,
  );

  Future<Either<DomainException, FindTownByLocationResponseDto>>
      findTownByLocation(FindTownIdRequest requestModel);
}
