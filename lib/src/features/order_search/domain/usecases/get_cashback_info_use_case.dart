import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/features/order_search/data/repositories/search_order_repository_impl.dart';
import 'package:nomad_taxi/src/features/order_search/domain/entities/cashback_info/cashback_info.dart';
import 'package:nomad_taxi/src/features/order_search/domain/repositories/i_search_order_repository.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class GetCashbackInfoUseCase extends NoneInputBoundaryUseCase<CashbackInfo?> {
  final ISearchOrderRepository _repository;

  GetCashbackInfoUseCase(
      @Named.from(SearchOrderRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, CashbackInfo?>> execute() async =>
      _repository.getCashbackInfo();
}
