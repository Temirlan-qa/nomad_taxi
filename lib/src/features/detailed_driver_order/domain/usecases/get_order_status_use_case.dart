import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/base/base_usecase/use_case.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/entities/get_order_status_response.dart';

import '../../../orders/data/models/requests/accept_order_request.dart';
import '../../data/repositories/driver_order_repository.dart';
import '../repositories/i_driver_order_repository.dart';

@lazySingleton
class GetOrderStatusUseCase
    extends BaseStreamUseCase<GetOrderStatusResponse, OrderRequest> {
  GetOrderStatusUseCase(@Named.from(DriverOrderRepository) this._repository);
  final IDriverOrderRepository _repository;

  @override
  Stream<Either<DomainException, GetOrderStatusResponse>> execute(OrderRequest requestModel) {
    return _repository.getOrderStatus(requestModel);
  }
}
