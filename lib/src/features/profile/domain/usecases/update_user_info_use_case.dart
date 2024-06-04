import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/profile_entity.dart';
import 'package:nomad_taxi/src/features/profile/domain/repositories/i_profile_repository.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_user_info_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class UpdateUserInfoUseCase
    extends UseCase<ProfileEntity, UpdateUserInfoRequest> {
  final IProfileRepository _profileRepository;

  UpdateUserInfoUseCase(
      @Named.from(ProfileRepositoryImpl) this._profileRepository);

  @override
  Future<Either<DomainException, ProfileEntity>> execute(
          UpdateUserInfoRequest requestModel) async =>
      _profileRepository.updateUserInfo(requestModel);
}
