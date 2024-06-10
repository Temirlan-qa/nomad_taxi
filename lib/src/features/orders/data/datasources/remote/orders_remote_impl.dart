import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/service/storage/storage_service_impl.dart';
import 'package:nomad_taxi/src/features/orders/data/models/create_order_response/create_order_response_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/delete_order_response/delete_order_response_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/find_town_by_location_response/find_town_by_location_response_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/get_orders_response/get_orders_response_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/response/order_response_dto.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/update_order/update_order_entity.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import '../../../domain/entities/create_order/create_order_entity.dart';
import '../../models/update_order_response/update_order_response_dto.dart';
import 'i_orders_remote.dart';

@named
@LazySingleton(as: IOrdersRemote)
class OrdersRemoteImpl implements IOrdersRemote {
  OrdersRemoteImpl(this.client);

  // final DioRestClient client;
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
      var dio = Dio();
      var response = await dio.request(
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
      var dio = Dio();
      var response = await dio.request(
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
      var dio = Dio();
      var response = await dio.request(
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
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/partner/order',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      log(response.toString());

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
      var dio = Dio();
      var response = await dio.request(
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
      var dio = Dio();
      var response = await dio.request(
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

  @override
  Future<Either<DomainException, CreateOrderResponseDto>> createOrder(
      CreateOrderEntity request) async {
    try {
      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/order',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: request,
      );

      if (response.statusCode == 200) {
        return Right(CreateOrderResponseDto.fromJson(response.data));
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
  Future<Either<DomainException, DeleteOrderResponseDto>> deleteOrder(
      String orderId) async {
    try {
      var headers = {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/order/$orderId',
        options: Options(
          method: 'DELETE',
          headers: headers,
        ),
      );

      log(response.toString());

      if (response.statusCode == 200) {
        return Right(DeleteOrderResponseDto.fromJson(response.data));
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
  Future<Either<DomainException, CreateOrderResponseDto>> getOrder(
      String orderId) async {
    try {
      var headers = {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/order/$orderId',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      log(response.toString());

      if (response.statusCode == 200) {
        return Right(CreateOrderResponseDto.fromJson(response.data));
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
  Future<Either<DomainException, UpdateOrderResponseDto>> updateOrder(
      UpdateOrderEntity request, String orderId) async {
    try {
      var headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/order/$orderId',
        options: Options(
          method: 'PUT',
          headers: headers,
        ),
        data: request,
      );

      if (response.statusCode == 200) {
        return Right(UpdateOrderResponseDto.fromJson(response.data));
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
  Future<Either<DomainException, FindTownByLocationResponseDto>>
      findTownByLocation(double lat, double lng) async {
    try {
      var headers = {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/town/by-location?lat=$lat&lng=$lng',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      log(response.toString());

      if (response.statusCode == 200) {
        return Right(FindTownByLocationResponseDto.fromJson(response.data));
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
