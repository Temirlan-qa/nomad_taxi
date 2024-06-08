import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/utils/loggers/logger.dart';
import 'package:nomad_taxi/src/features/transfer_money/data/datasources/remote/balance_remote_impl.dart';
import 'package:nomad_taxi/src/features/transfer_money/data/datasources/remote/i_balance_remote.dart';
import 'package:nomad_taxi/src/features/transfer_money/domain/repositories/i_balance_repository.dart';


import '../../../../core/exceptions/domain_exception.dart';

@named
@LazySingleton(as: IBalanceRepository)
class BalanceRepositoryImpl implements IBalanceRepository {
  final IBalanceRemote _balanceImpl;
  BalanceRepositoryImpl(@Named.from(BalanceRemoteImpl) this._balanceImpl);



  @override
  Future<Either<DomainException, String>> payInfo() async {
    try {
      final requests = await _balanceImpl.payInfo();
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, String>> withdrawInfo() async {
    try {
      final result = await _balanceImpl.withdrawInfo();
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
