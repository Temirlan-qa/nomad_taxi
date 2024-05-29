import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/api/client/endpoints.dart';
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
      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        '${EndPoints.baseUrl}/v1/auth/logout',
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
      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        '${EndPoints.baseUrl}/v1/user',
        options: Options(
          method: 'PUT',
          headers: headers,
        ),
        data: request,
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
      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        '${EndPoints.baseUrl}/v1/auth/user',
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
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, ProfileDto>> updateFcmToken(
      UpdateFcmTokenRequest request) async {
    try {
      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        '${EndPoints.baseUrl}/v1/user/fcm-token',
        options: Options(
          method: 'PUT',
          headers: headers,
        ),
        data: request,
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
  Future<Either<DomainException, ProfileDto>> updateLanguage(
      UpdateLanguageRequest request) async {
    try {
      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        '${EndPoints.baseUrl}/v1/user/language',
        options: Options(
          method: 'PUT',
          headers: headers,
        ),
        data: request,
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
}
