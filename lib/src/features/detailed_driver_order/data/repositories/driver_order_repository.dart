import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/data/datasources/remote/i_driver_order.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/data/models/response/get_order_status_dto.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/entities/get_order_status_response.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/repositories/i_driver_order_repository.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/response/order_response.dart';

import '../datasources/remote/driver_order_remote_impl.dart';
import '../mappers/driver_order_dto_mapper.dart';

@named
@LazySingleton(as: IDriverOrderRepository)
class DriverOrderRepository implements IDriverOrderRepository {
  DriverOrderRepository(
      @Named.from(DriverOrderRemoteImpl) this._driverRemoteImpl);
  final IDriverOrder _driverRemoteImpl;

  @override
  Stream<Either<DomainException, GetOrderStatusResponse>>
      getOrderStatus() async* {
    final Stream<Either<DomainException, GetOrderStatusResponseDto>> stream =
        _driverRemoteImpl.getOrderStatus();

    yield* stream.map((result) {
      return result.fold((error) => Left(error), (dto) {
        try {
          final GetOrderStatusResponse orderStatusResponse =
              DriverOrderDtoMapper().map(dto);
          return Right(orderStatusResponse);
        } catch (e) {
          return Left(UnknownException(message: e.toString()));
        }
      });
    });
  }

  @override
  Stream<Either<DomainException, OrderResponse>> getNewOrder()async* {
    final stream = _driverRemoteImpl.getNewOrder();

    yield *
        stream.distinct().map((result) {
          return result.fold((error) => Left(error), (response) {
            return Right(response);
      });   
    });
  }
}
