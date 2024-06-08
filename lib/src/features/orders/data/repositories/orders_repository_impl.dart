import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/utils/loggers/logger.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../domain/entities/get_orders_response/get_orders_response.dart';
import '../../domain/repositories/i_orders_repository.dart';
import '../datasources/remote/i_orders_remote.dart';
import '../datasources/remote/orders_remote_impl.dart';

@named
@LazySingleton(as: IOrdersRepository)
class OrdersRepositoryImpl implements IOrdersRepository {
  final IOrdersRemote _ordersImpl;
  OrdersRepositoryImpl(@Named.from(OrdersRemoteImpl) this._ordersImpl);

  @override
  Future<Either<DomainException, OrderResponse>> acceptOrder(
      String orderId) async {
    try {
      final requests = await _ordersImpl.acceptOrder(orderId);
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
  Future<Either<DomainException, OrderResponse>> cancelOrder(
      String orderId) async {
    try {
      final requests = await _ordersImpl.cancelOrder(orderId);
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
  Future<Either<DomainException, GetOrdersResponse>> getOrders() async {
    try {
      final requests = await _ordersImpl.getOrders();
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(GetOrdersResponse.fromJson(result.toJson()));
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
      final requests = await _ordersImpl.acceptOrder(orderId);
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
      final requests = await _ordersImpl.acceptOrder(orderId);
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
}
