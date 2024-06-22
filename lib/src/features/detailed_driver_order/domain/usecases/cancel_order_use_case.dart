import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/features/orders/data/repositories/orders_repository_impl.dart';
import 'package:nomad_taxi/src/features/orders/domain/repositories/i_orders_repository.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../../orders/data/models/requests/accept_order_request.dart';

@lazySingleton
class CancelOrderUseCase extends NoneOutputBoundaryUseCase<OrderRequest> {
  final IOrdersRepository _repository;

  CancelOrderUseCase(@Named.from(OrdersRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, void>> execute(
      OrderRequest requestModel) async {
    return _repository.cancelOrder(requestModel);
  }
}
