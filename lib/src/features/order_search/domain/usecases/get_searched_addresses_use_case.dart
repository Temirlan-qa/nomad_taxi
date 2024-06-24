import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/features/order_search/data/repositories/search_order_repository_impl.dart';
import 'package:nomad_taxi/src/features/order_search/domain/entities/searched_order.dart';
import 'package:nomad_taxi/src/features/order_search/domain/repositories/i_search_order_repository.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class GetSearchedAddressesUseCase
    extends NoneInputBoundaryUseCase<SearchedOrderEntity> {
  final ISearchOrderRepository _repository;

  GetSearchedAddressesUseCase(
      @Named.from(SearchOrderRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, SearchedOrderEntity>> execute() async =>
      _repository.getSearchedAddresses();
}
