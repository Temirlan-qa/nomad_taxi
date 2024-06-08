import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/features/transfer_money/data/repositories/balance_repository_impl.dart';
import 'package:nomad_taxi/src/features/transfer_money/domain/repositories/i_balance_repository.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class PayInfoUseCase extends NoneInputBoundaryUseCase<String> {
  final IBalanceRepository _balanceRepository;

  PayInfoUseCase(@Named.from(BalanceRepositoryImpl) this._balanceRepository);

  @override
  Future<Either<DomainException, String>> execute() async =>
      _balanceRepository.payInfo();
}
