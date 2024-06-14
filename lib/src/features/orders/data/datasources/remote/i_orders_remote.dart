import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/orders/data/models/create_order_response/create_order_response_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/delete_order_response/delete_order_response_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/find_town_by_location_response/find_town_by_location_response_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/orders_dto/orders_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/order/order_dto.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/update_order/update_order_entity.dart';

import '../../../domain/entities/create_order/create_order_entity.dart';
import '../../models/requests/accept_order_request.dart';
import '../../models/update_order_response/update_order_response_dto.dart';

abstract class IOrdersRemote {
  Future<Either<DomainException, OrderDto>> acceptOrder(
    OrderRequest request,
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

  Future<Either<DomainException, OrdersDto>> getOrders();

  Future<Either<DomainException, OrderDto>> waitingForClient(
    String orderId,
  );

  Future<Either<DomainException, CreateOrderResponseDto>> createOrder(
    CreateOrderEntity request,
  );

  Future<Either<DomainException, CreateOrderResponseDto>> getOrder(
    String orderId,
  );

  Future<Either<DomainException, UpdateOrderResponseDto>> updateOrder(
    UpdateOrderEntity request,
    String orderId,
  );

  Future<Either<DomainException, DeleteOrderResponseDto>> deleteOrder(
    String orderId,
  );

  Future<Either<DomainException, FindTownByLocationResponseDto>>
      findTownByLocation(
    double lat,
    double lng,
  );
}
