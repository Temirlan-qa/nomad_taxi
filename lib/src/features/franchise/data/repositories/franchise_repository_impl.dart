import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/utils/loggers/logger.dart';
import 'package:nomad_taxi/src/features/franchise/data/datasources/franchise_remote_impl.dart';
import 'package:nomad_taxi/src/features/franchise/data/datasources/i_franchise_remote.dart';
import 'package:nomad_taxi/src/features/franchise/domain/repositories/i_franchise_repository.dart';

import '../../../../core/exceptions/domain_exception.dart';

@named
@LazySingleton(as: IFranchiseRepository)
class FranchiseRepositoryImpl implements IFranchiseRepository {
  final IFranchiseRemote _franchiseImpl;
  FranchiseRepositoryImpl(@Named.from(FranchiseRemoteImpl) this._franchiseImpl);

  @override
  Future<Either<DomainException, String>> franchiseInfo() async {
    try {
      final result = await _franchiseImpl.franchiseInfo();
      return result.fold(
        (error) => Left(error),
        (dto) {
          return Right(dto);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
