import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/features/order_search/domain/entities/searched_order.dart';

import '../../../../core/exceptions/domain_exception.dart';

abstract class ISearchOrderRepository {
  Future<Either<DomainException, SearchedOrderEntity>> getSearchedAddresses();
}
