import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/api/client/rest/dio/dio_client.dart';
import 'package:nomad_taxi/src/core/service/storage/storage_service_impl.dart';
import 'package:nomad_taxi/src/features/profile/data/models/available_languages_response/available_languages_response_dto.dart';
import 'package:nomad_taxi/src/features/profile/data/models/profile_dto.dart';
import 'package:nomad_taxi/src/features/profile/data/models/promocode_response/promocode_response_dto.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/activate_promocode_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_fcm_token_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_language_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_user_info_request.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import '../../../domain/requests/update_partner_data_request.dart';
import 'i_profile_remote.dart';

@named
@LazySingleton(as: IProfileRemote)
class ProfileRemoteImpl implements IProfileRemote {
  var client = Dio();
  var dioRestClient = DioRestClient();
  var st = StorageServiceImpl();

  @override
  Future<Either<DomainException, bool>> deleteAccount() async {
    try {
      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/user',
        options: Options(
          method: 'DELETE',
          headers: headers,
        ),
      );
      if (response.statusCode == 200) {
        await st.deleteToken();
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
  Future<Either<DomainException, String>> logOut() async {
    try {
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
        await st.deleteToken();
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
      var headers = {
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

      log(response.toString());

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
      UpdateFcmTokenRequest request) {
    // TODO: implement updateFcmToken
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, ProfileDto>> updateLanguage(
      UpdateLanguageRequest request) async {
    try {
      var headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/user/language',
        options: Options(
          method: 'PUT',
          headers: headers,
        ),
        data: request.toJson(),
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
  Future<Either<DomainException, ProfileDto>> togglePartnerStatus() async {
    try {
      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/partner/toggle',
        options: Options(
          method: 'POST',
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
  Future<Either<DomainException, ProfileDto>> updatePartnerData(
      UpdatePartnerDataRequest request) async {
    try {
      var headers = {
        'Accept-Language': 'ru',
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();

      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/partner',
        options: Options(
          method: 'PUT',
          headers: headers,
        ),
        data: request.toJson(),
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
  Future<Either<DomainException, String>> withdrawInfo() async {
    try {
      var headers = {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/partner/balance/withdraw-info',
        options: Options(
          method: 'GET',
          headers: headers,
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

  @override
  Future<Either<DomainException, String>> payInfo() async {
    try {
      var headers = {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/partner/balance/pay-info',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      log('Tima$response');
      log("Status: ${response.statusCode}");
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

  @override
  Future<Either<DomainException, AvailableLanguagesResponseDto>>
      getAvailableLanguages() async {
    try {
      var headers = {
        'Accept': 'application/json',
      };
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/language',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      log(response.toString());

      if (response.statusCode == 200) {
        return Right(
            AvailableLanguagesResponseDto.fromJson(response.data['data']));
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
  Future<Either<DomainException, PromocodeResponseDto>> activatePromocode(
      ActivatePromocodeRequest request) async {
    try {
      final languageCode = st.getLanguageCode() ?? 'ru';
      var headers = {
        'Accept-Language': languageCode,
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer ${st.getToken()!}'
      };
      var dio = Dio();
      var response = await dio.request(
        'https://auyltaxi.kz/api/v1/user/promocode/activate',
        data: request.toJson(),
        options: Options(
          method: 'POST',
          headers: headers,
        ),
      );

      PromocodeResponseDto asd = PromocodeResponseDto.fromJson(response.data);
      if (response.statusCode == 200) {
        return Right(asd);
      } else {
        return Left(UnknownException());
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Left(UnknownException(message: e.response?.data['message']));
      }
      return Left(UnknownException(message: e.toString()));
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }
}
