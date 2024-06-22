import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/base/base_usecase/use_case.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/orders/data/models/requests/accept_order_request.dart';
import 'package:nomad_taxi/src/features/orders/domain/repositories/i_orders_repository.dart';

import '../../../orders/data/repositories/orders_repository_impl.dart';

@lazySingleton
class WaitingForClientUseCase extends NoneOutputBoundaryUseCase<OrderRequest> {
  WaitingForClientUseCase(@Named.from(OrdersRepositoryImpl) this._repository);

  final IOrdersRepository _repository;

  @override
  Future<Either<DomainException, void>> execute(
      OrderRequest requestModel) async =>
     await _repository.waitingForClient(requestModel);
}
