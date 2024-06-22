import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/features/franchise/data/repositories/franchise_repository_impl.dart';
import 'package:nomad_taxi/src/features/franchise/domain/repositories/i_franchise_repository.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class FranchiseUseCase extends NoneInputBoundaryUseCase<dynamic> {
  final IFranchiseRepository _repository;

  FranchiseUseCase(@Named.from(FranchiseRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, dynamic>> execute() async =>
      _repository.franchiseInfo();
}
