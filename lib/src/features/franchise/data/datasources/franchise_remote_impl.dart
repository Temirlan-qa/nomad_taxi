import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/api/client/rest/dio/dio_client.dart';
import 'package:nomad_taxi/src/core/service/storage/storage_service_impl.dart';

import '../../../../core/exceptions/domain_exception.dart';
import 'i_franchise_remote.dart';

@named
@LazySingleton(as: IFranchiseRemote)
class FranchiseRemoteImpl implements IFranchiseRemote {
  var client = Dio();
  var dioRestClient = DioRestClient();
  var st = StorageServiceImpl();

  @override
  Future<Either<DomainException, String>> franchiseInfo() async {
    try {
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/town/by-location',
        options: Options(
          method: 'GET',
        ),
      );

      log(response.toString());

      if (response.statusCode == 200) {
        return Right('${response.data}');
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
