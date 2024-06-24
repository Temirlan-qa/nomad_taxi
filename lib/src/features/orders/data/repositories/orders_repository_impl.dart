import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/utils/loggers/logger.dart';
import 'package:nomad_taxi/src/features/main/domain/models/find_town_id_request.dart';
import 'package:nomad_taxi/src/features/orders/data/mappers/find_town_by_location_dto_mapper.dart';
import 'package:nomad_taxi/src/features/orders/data/mappers/order_dto_mapper.dart';
import 'package:nomad_taxi/src/features/orders/data/models/order/order_dto.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/create_order_response/create_order_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/delete_order_response/delete_order_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/find_town_by_location_response/find_town_by_location_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/order/order_entity.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../domain/entities/orders_response/orders_response.dart';
import '../../domain/entities/update_order/update_order_entity.dart';
import '../../domain/entities/update_order_response.dart/update_order_response.dart';
import '../../domain/repositories/i_orders_repository.dart';
import '../datasources/remote/i_orders_remote.dart';
import '../datasources/remote/orders_remote_impl.dart';
import '../models/requests/accept_order_request.dart';
import '../models/requests/create_order_request.dart';

@named
@LazySingleton(as: IOrdersRepository)
class OrdersRepositoryImpl implements IOrdersRepository {
  final IOrdersRemote _ordersImpl;
  OrdersRepositoryImpl(@Named.from(OrdersRemoteImpl) this._ordersImpl);

  @override
  Future<Either<DomainException, OrderResponse>> acceptOrder(
      OrderRequest request) async {
    try {
      final requests = await _ordersImpl.acceptOrder(request);

      return requests.fold(
        (error) => Left(error),
        (dto) {
          final OrderEntity entity = OrderDtoMapper().map(dto);

          return Right(OrderResponse(order: entity));
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, void>> cancelOrder(OrderRequest order) async {
    return _ordersImpl.cancelOrder(order);
  }

  @override
  Future<Either<DomainException, void>> completeOrder(
      OrderRequest order) async {
    try {
      final requests = await _ordersImpl.completeOrder(order);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return const Right(null);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, OrdersResponse>> getOrders() async {
    try {
      final requests = await _ordersImpl.getOrders();
      return requests.fold(
        (error) => Left(error),
        (dtos) {
          final List<OrderEntity> entities = dtos.orders
              .map((OrderDto dto) => OrderDtoMapper().map(dto))
              .toList();

          return Right(OrdersResponse(orders: entities));
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, void>> startRoute(OrderRequest order) async {
    try {
      final requests = await _ordersImpl.startRoute(order);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return const Right(null);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, void>> waitingForClient(
      OrderRequest order) async {
    try {
      final requests = await _ordersImpl.waitingForClient(order);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return const Right(null);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, OrderResponse>> createOrder(
      CreateOrderRequest request) async {
    try {
      final requests = await _ordersImpl.createOrder(request);
      return requests.fold(
        (error) => Left(error),
        (response) {
          final OrderEntity? entity = response.order;

          return Right(OrderResponse(order: entity));
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, DeleteOrderResponse>> deleteOrder(
      OrderRequest order) async {
    try {
      final requests = await _ordersImpl.deleteOrder(order);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(DeleteOrderResponse.fromJson(result.toJson()));
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, CreateOrderResponse>> getOrder(
      OrderRequest order) async {
    try {
      final requests = await _ordersImpl.getOrder(order);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(CreateOrderResponse.fromJson(result.toJson()));
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, UpdateOrderResponse>> updateOrder(
      UpdateOrderEntity request, OrderRequest order) async {
    try {
      final requests = await _ordersImpl.updateOrder(request, order);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(UpdateOrderResponse.fromJson(result.toJson()));
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, FindTownByLocationResponse>>
      findTownByLocation(FindTownIdRequest requestModel) async {
    try {
      final requests = await _ordersImpl.findTownByLocation(requestModel);
      return requests.fold(
        (error) => Left(error),
        (result) {
          final entity = FindTownByLocationDtoMapper().map(result);
          return Right(entity);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
