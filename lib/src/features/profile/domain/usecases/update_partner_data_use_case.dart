import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/features/profile/data/models/partner/partner_dto.dart';
import 'package:nomad_taxi/src/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/profile_entity.dart';
import 'package:nomad_taxi/src/features/profile/domain/repositories/i_profile_repository.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_partner_data_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class UpdatePartnerDataUseCase
    extends UseCase<ProfileEntity, UpdatePartnerDataRequest> {
  final IProfileRepository _profileRepository;

  UpdatePartnerDataUseCase(
      @Named.from(ProfileRepositoryImpl) this._profileRepository);

  @override
  Future<Either<DomainException, ProfileEntity>> execute(
      UpdatePartnerDataRequest requestModel) async {
    return _profileRepository.updatePartnerData(requestModel);
  }

  // @override
  // Future<Either<DomainException, ProfileEntity>> execute(
  //         PartnerDto requestModel) async =>
  //     _profileRepository.updatePartnerData(requestModel);
}
