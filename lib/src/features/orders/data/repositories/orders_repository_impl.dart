import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/utils/loggers/logger.dart';
import 'package:nomad_taxi/src/features/orders/data/mappers/order_dto_mapper.dart';
import 'package:nomad_taxi/src/features/orders/data/models/order/order_dto.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/create_order/create_order_entity.dart';
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
  Future<Either<DomainException, void>> cancelOrder(String orderId) async {
    try {
      await _ordersImpl.cancelOrder(orderId);
      return const Right(null);
      // return requests.fold(
      //   (error) => Left(error),
      //   (dto) {
      //     final OrderEntity entity = OrderDtoMapper().map(dto);

      //     return Right(OrderResponse(order: entity));
      //   },
      // );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, OrderResponse>> completeOrder(
      String orderId) async {
    try {
      final requests = await _ordersImpl.completeOrder(orderId);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(OrderResponse.fromJson(result.toJson()));
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
  Future<Either<DomainException, OrderResponse>> startRoute(
      String orderId) async {
    try {
      final requests = await _ordersImpl.startRoute(orderId);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(OrderResponse.fromJson(result.toJson()));
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, OrderResponse>> waitingForClient(
      String orderId) async {
    try {
      final requests = await _ordersImpl.waitingForClient(orderId);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(OrderResponse.fromJson(result.toJson()));
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
  Future<Either<DomainException, DeleteOrderResponse>> deleteOrder(
      String orderId) async {
    try {
      final requests = await _ordersImpl.deleteOrder(orderId);
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
      String orderId) async {
    try {
      final requests = await _ordersImpl.getOrder(orderId);
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
      UpdateOrderEntity request, String orderId) async {
    try {
      final requests = await _ordersImpl.updateOrder(request, orderId);
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
      findTownByLocation(double latitude, double longitude) async {
    try {
      final requests =
          await _ordersImpl.findTownByLocation(latitude, longitude);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(FindTownByLocationResponse.fromJson(result.toJson()));
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
