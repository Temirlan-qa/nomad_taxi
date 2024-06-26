import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/features/order_search/data/models/cashback_info/cashback_info_dto.dart';
import 'package:nomad_taxi/src/features/order_search/data/models/searched_order_dto.dart';

import '../../../../../core/exceptions/domain_exception.dart';

abstract interface class IOrderSearchRemote {
  Future<Either<DomainException, SearchedOrderDto>> getSearchedAddresses();

  Future<Either<DomainException, CashbackInfoDto?>> getCashbackInfo();
}
