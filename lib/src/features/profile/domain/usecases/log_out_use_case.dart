import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:nomad_taxi/src/features/profile/domain/repositories/i_profile_repository.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class LogOutUseCase extends NoneInputBoundaryUseCase<String> {
  final IProfileRepository _profileRepository;

  LogOutUseCase(@Named.from(ProfileRepositoryImpl) this._profileRepository);

  @override
  Future<Either<DomainException, String>> execute() async =>
      _profileRepository.logOut();
}
