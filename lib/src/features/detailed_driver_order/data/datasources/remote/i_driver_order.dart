import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/data/models/response/get_order_status_dto.dart';

import '../../../../../core/exceptions/domain_exception.dart';


abstract interface class IDriverOrder {
  Stream<Either<DomainException, GetOrderStatusResponseDto>> getOrderStatus();
}
