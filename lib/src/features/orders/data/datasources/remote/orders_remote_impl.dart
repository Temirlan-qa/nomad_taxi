import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/service/storage/storage_service_impl.dart';
import 'package:nomad_taxi/src/core/utils/loggers/logger.dart';
import 'package:nomad_taxi/src/features/orders/data/models/get_orders_response/get_orders_response_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/response/order_response_dto.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import 'i_orders_remote.dart';

@named
@LazySingleton(as: IOrdersRemote)
class OrdersRemoteImpl implements IOrdersRemote {
  var client = Dio();
  var st = StorageServiceImpl();

  @override
  Future<Either<DomainException, OrderResponseDto>> acceptOrder(
      String orderId) async {
    try {
      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var response = await client.request(
        'https://auyltaxi.kz/api/v1/partner/order/$orderId/accept',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
      );

      if (response.statusCode == 200) {
        return Right(OrderResponseDto.fromJson(response.data));
      } else {
        return Left(UnknownException());
      }
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, OrderResponseDto>> cancelOrder(
      String orderId) async {
    try {
      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var response = await client.request(
        'https://auyltaxi.kz/api/v1/partner/order/$orderId/cancel',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
      );

      if (response.statusCode == 200) {
        return Right(OrderResponseDto.fromJson(response.data));
      } else {
        return Left(UnknownException());
      }
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, OrderResponseDto>> completeOrder(
      String orderId) async {
    try {
      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var response = await client.request(
        'https://auyltaxi.kz/api/v1/partner/order/$orderId/complete',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
      );

      if (response.statusCode == 200) {
        return Right(OrderResponseDto.fromJson(response.data));
      } else {
        return Left(UnknownException());
      }
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, GetOrdersResponseDto>> getOrders() async {
    try {
      var headers = {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var response = await client.request(
        'https://auyltaxi.kz/api/v1/partner/order',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      Log.i(response.toString());

      if (response.statusCode == 200) {
        return Right(GetOrdersResponseDto.fromJson(response.data));
      } else {
        return Left(UnknownException());
      }
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, OrderResponseDto>> startRoute(
      String orderId) async {
    try {
      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var response = await client.request(
        'https://auyltaxi.kz/api/v1/partner/order/$orderId/start-route',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
      );

      if (response.statusCode == 200) {
        return Right(OrderResponseDto.fromJson(response.data));
      } else {
        return Left(UnknownException());
      }
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, OrderResponseDto>> waitingForClient(
      String orderId) async {
    try {
      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var response = await client.request(
        'https://auyltaxi.kz/api/v1/partner/order/$orderId/await',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
      );

      if (response.statusCode == 200) {
        return Right(OrderResponseDto.fromJson(response.data));
      } else {
        return Left(UnknownException());
      }
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }
}
