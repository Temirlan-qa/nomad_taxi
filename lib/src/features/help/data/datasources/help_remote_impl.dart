import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/api/client/endpoints.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/core/service/storage/storage_service_impl.dart';
import 'package:nomad_taxi/src/features/help/data/models/questions_dto.dart';

import 'i_help_remote.dart';

@named
@LazySingleton(as: IHelpRemote)
class HelpRemoteImpl implements IHelpRemote {
  var client = Dio();
  var st = StorageServiceImpl();

  @override
  Future<Either<DomainException, QuestionsDto>> getQuestions() async {
    try {
      final StorageServiceImpl st = StorageServiceImpl();
      final languageCode = st.getLanguageCode();

      var headers = {
        'Accept-Language': languageCode ?? 'ru',
        'Accept': 'application/json',
      };

      var response = await client.request(
        '${EndPoints.baseUrl}${EndPoints.getFaq}',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      log(response.toString());

      if (response.statusCode == 200) {
        return Right(QuestionsDto.fromJson(response.data['data']));
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
