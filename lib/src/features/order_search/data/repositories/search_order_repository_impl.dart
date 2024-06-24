import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/utils/loggers/logger.dart';
import 'package:nomad_taxi/src/features/order_search/data/datasources/remote/i_order_search.dart';
import 'package:nomad_taxi/src/features/order_search/data/datasources/remote/order_search_remote_impl.dart';
import 'package:nomad_taxi/src/features/order_search/data/mappers/searched_order_dto_mapper.dart';
import 'package:nomad_taxi/src/features/order_search/domain/entities/searched_order.dart';
import 'package:nomad_taxi/src/features/order_search/domain/repositories/i_search_order_repository.dart';

import '../../../../core/exceptions/domain_exception.dart';

@named
@LazySingleton(as: ISearchOrderRepository)
class SearchOrderRepositoryImpl implements ISearchOrderRepository {
  final IOrderSearchRemote _orderSearch;
  SearchOrderRepositoryImpl(
      @Named.from(OrderSearchRemoteImpl) this._orderSearch);

  @override
  Future<Either<DomainException, SearchedOrderEntity>>
      getSearchedAddresses() async {
    try {
      final result = await _orderSearch.getSearchedAddresses();
      return result.fold(
        (error) => Left(error),
        (dtos) {
          return Right(SearchOrderDtoMapper().map(dtos));
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
