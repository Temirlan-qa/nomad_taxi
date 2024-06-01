import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/service/storage/storage_service_impl.dart';
import 'package:nomad_taxi/src/features/profile/data/models/profile_dto.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_fcm_token_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_language_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_user_info_request.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import 'i_profile_remote.dart';

@named
@LazySingleton(as: IProfileRemote)
class ProfileRemoteImpl implements IProfileRemote {
  //ProfileRemoteImpl(this.client);

  // final DioRestClient client;
  var client = Dio();
  var st = StorageServiceImpl();

  @override
  Future<Either<DomainException, ProfileDto>> deleteAccount() {
    // TODO: implement deleteAccount
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, String>> logOut() async {
    try {
      // final Either<DomainException, Response> response =
      //     await client.post(EndPoints.logout);

      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/auth/logout',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
      );

      if (response.statusCode == 200) {
        return Right(response.data['status']);
      } else {
        return Left(UnknownException());
      }

      // response.fold(
      //   (error) => Left(error),
      //   (result) {
      //     if (result.statusCode == 200) {
      //       return Right(result);
      //     }
      //     return Left(UnknownException());
      //   },
      // );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, ProfileDto>> updateUserInfo(
      UpdateUserInfoRequest request) async {
    try {
      // final Either<DomainException, Response> response =
      //     await client.post(EndPoints.updateUserData, data: request.toJson());

      // response.fold(
      //   (error) => Left(error),
      //   (result) {
      //     if (result.statusCode == 200) {
      // return Right(
      //   ProfileDto.fromJson(result.data),
      // );
      //     }
      //     return Left(UnknownException());
      //   },
      // );

      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var data = {'first_name': request.name, 'last_name': request.lastName};
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/user',
        options: Options(
          method: 'PUT',
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        return Right(ProfileDto.fromJson(response.data['data']));
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
  Future<Either<DomainException, ProfileDto>> getUserData() async {
    try {
      // final Either<DomainException, Response> response =
      //     await client.post(EndPoints.logout);

      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/auth/user',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      if (response.statusCode == 200) {
        return Right(ProfileDto.fromJson(response.data['data']));
      } else {
        return Left(UnknownException());
      }

      // response.fold(
      //   (error) => Left(error),
      //   (result) {
      //     if (result.statusCode == 200) {
      //       return Right(result);
      //     }
      //     return Left(UnknownException());
      //   },
      // );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, ProfileDto>> updateFcmToken(
      UpdateFcmTokenRequest request) {
    // TODO: implement updateFcmToken
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, ProfileDto>> updateLanguage(
      UpdateLanguageRequest request) {
    // TODO: implement updateLanguage
    throw UnimplementedError();
  }
}
