import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/base/base_usecase/use_case.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/create_order_response/create_order_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';

import '../../data/models/requests/create_order_request.dart';
import '../../data/repositories/orders_repository_impl.dart';
import '../repositories/i_orders_repository.dart';

@lazySingleton
class CreateOrderUseCase
    extends UseCase<OrderResponse, CreateOrderRequest> {
  CreateOrderUseCase(@Named.from(OrdersRepositoryImpl) this._repository);
  
  final IOrdersRepository _repository;
  
  @override
  Future<Either<DomainException, OrderResponse>> execute(CreateOrderRequest requestModel) async {
     return await _repository.createOrder(requestModel);
  }
}
