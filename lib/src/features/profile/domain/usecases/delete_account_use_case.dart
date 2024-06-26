import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:nomad_taxi/src/features/profile/domain/repositories/i_profile_repository.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class DeleteAccountUseCase extends NoneInputOutputBoundaryUseCase {
  final IProfileRepository _profileRepository;

  DeleteAccountUseCase(
      @Named.from(ProfileRepositoryImpl) this._profileRepository);

  @override
  Future<Either<DomainException, void>> execute() async =>
      _profileRepository.deleteAccount();
}
