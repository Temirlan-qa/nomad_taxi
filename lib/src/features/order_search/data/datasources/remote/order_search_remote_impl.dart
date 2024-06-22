import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/api/client/endpoints.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/core/service/storage/storage_service_impl.dart';
import 'package:nomad_taxi/src/features/order_search/data/datasources/remote/i_order_search.dart';
import 'package:nomad_taxi/src/features/order_search/data/models/searched_order_dto.dart';

@named
@LazySingleton(as: IOrderSearchRemote)
class OrderSearchRemoteImpl implements IOrderSearchRemote {
  var client = Dio();
  var st = StorageServiceImpl();

  @override
  Future<Either<DomainException, SearchedOrderDto>>
      getSearchedAddresses() async {
    try {
      final StorageServiceImpl st = StorageServiceImpl();
      final languageCode = st.getLanguageCode();

      var headers = {
        'Accept-Language': languageCode ?? 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };

      var response = await client.request(
        '${EndPoints.baseUrl}${EndPoints.getOrderSearch}',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      log(response.toString());

      if (response.statusCode == 200) {
        return Right(SearchedOrderDto.fromJson(response.data));
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
