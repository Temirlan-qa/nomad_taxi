import 'package:nomad_taxi/src/features/detailed_driver_order/data/models/response/get_order_status_dto.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/data/models/response/order_status_data_dto.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/entities/get_order_status_response.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/entities/order_status_data_response.dart';

class DriverOrderDtoMapper {
  GetOrderStatusResponse map(GetOrderStatusResponseDto from) {
    final OrderStatusDataDto fromData = from.data;
    final OrderStatusDataResponse data = OrderStatusDataResponse(
      socketId: fromData.socketId,
      activityTimeout: fromData.activityTimeout,
    );
    return GetOrderStatusResponse(data: data, status: from.status);
  }
}