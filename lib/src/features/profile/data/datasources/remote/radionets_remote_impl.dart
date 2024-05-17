import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/api/client/rest/dio_client.dart';
import 'package:nomad_taxi/src/features/profile/data/models/profile_dto.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_user_info_request.dart';

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/exception/domain_exception.dart';
import 'i_profile_remote.dart';

@named
@LazySingleton(as: IProfileRemote)
class ProfileRemoteImpl implements IProfileRemote {
  ProfileRemoteImpl(this.client);

  final DioRestClient client;

  @override
  Future<Either<DomainException, ProfileDto>> deleteAccount() {
    // TODO: implement deleteAccount
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, ProfileDto>> logOut() async {
    try {
      final Either<DomainException, Response> response =
          await client.post(EndPoints.logout);

      response.fold(
        (error) => Left(error),
        (result) {
          if (result.statusCode == 200) {
            return Right(
              ProfileDto.fromJson(result.data),
            );
          }
          return Left(UnknownException());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, ProfileDto>> updateUserInfo(
      UpdateUserInfoRequest request) async {
    try {
      final Either<DomainException, Response> response =
          await client.post(EndPoints.updateUserData, data: request.toJson());

      response.fold(
        (error) => Left(error),
        (result) {
          if (result.statusCode == 200) {
            return Right(
              ProfileDto.fromJson(result.data),
            );
          }
          return Left(UnknownException());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
    throw UnimplementedError();
  }
}
