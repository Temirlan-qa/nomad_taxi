import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/profile_entity.dart';
import 'package:nomad_taxi/src/features/profile/domain/repositories/i_profile_repository.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../requests/update_fcm_token_request.dart';

@lazySingleton
class UpdateFcmTokenUseCase
    extends UseCase<ProfileEntity, UpdateFcmTokenRequest> {
  final IProfileRepository _profileRepository;

  UpdateFcmTokenUseCase(
      @Named.from(ProfileRepositoryImpl) this._profileRepository);

  @override
  Future<Either<DomainException, ProfileEntity>> execute(
          UpdateFcmTokenRequest requestModel) async =>
      _profileRepository.updateFcmToken(requestModel);
}
