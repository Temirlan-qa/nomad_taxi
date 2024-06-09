// import 'package:fpdart/fpdart.dart';
// import 'package:injectable/injectable.dart';
// import 'package:nomad_taxi/src/features/orders/data/repositories/orders_repository_impl.dart';
// import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';
// import 'package:nomad_taxi/src/features/orders/domain/repositories/i_orders_repository.dart';

// import '../../../../core/base/base_usecase/use_case.dart';
// import '../../../../core/exceptions/domain_exception.dart';

// @lazySingleton
// class AcceptOrderUseCase extends UseCase<OrderResponse, String> {
//   final IOrdersRepository _repository;

//   AcceptOrderUseCase(@Named.from(OrdersRepositoryImpl) this._repository);

//   @override
//   Future<Either<DomainException, OrderResponse>> execute() async =>
//       _repository.acceptOrder(orderId);
// }
