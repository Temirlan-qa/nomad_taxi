import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/service/storage/storage_service_impl.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import 'i_balance_remote.dart';

@named
@LazySingleton(as: IBalanceRemote)
class BalanceRemoteImpl implements IBalanceRemote {
  // BalanceRemoteImpl(this.client);

  // final DioRestClient client;
  final StorageServiceImpl st = StorageServiceImpl();
  var dio = Dio();

  @override
  Future<Either<DomainException, String>> withdrawInfo() async {
    try {
      final headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}',
      };
      // final Either<DomainException, Response> response = await client
      //     .get(EndPoints.withdrawInfo, options: Options(headers: headers));

      // return response.fold(
      //   (error) => Left(error),
      //   (result) {
      //     if (result.statusCode == 200) {
      //       return Right('$result');
      //     }
      //     return Left(UnknownException());
      //   },
      // );
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/partner/balance/withdraw-info',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      if (response.statusCode == 200) {
        return Right('${response.data}');
      } else if (response.statusCode == 500) {
        return Left(UnknownException(message: 'Internal Server Error.'));
      } else {
        return Left(UnknownException(
            message: 'Unexpected error: ${response.statusCode}'));
      }
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, String>> payInfo() async {
    try {
      final headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}',
      };

      final response = await dio.request(
        'https://auyltaxi.kz/api/v1/partner/balance/pay-info',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      if (response.statusCode == 200) {
        return Right('${response.data}');
      } else if (response.statusCode == 500) {
        return Left(UnknownException(message: 'Internal Server Error.'));
      } else {
        return Left(UnknownException(
            message: 'Unexpected error: ${response.statusCode}'));
      }
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }
}
