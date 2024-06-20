import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/promocode_response/promocode_response.dart';
import 'package:nomad_taxi/src/features/profile/domain/repositories/i_profile_repository.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/activate_promocode_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class ActivatePromocodeUseCase
    extends UseCase<PromocodeResponse, ActivatePromocodeRequest> {
  final IProfileRepository _profileRepository;

  ActivatePromocodeUseCase(
      @Named.from(ProfileRepositoryImpl) this._profileRepository);

  @override
  Future<Either<DomainException, PromocodeResponse>> execute(
          ActivatePromocodeRequest request) async =>
      _profileRepository.activatePromocode(request);
}
