import 'package:nomad_taxi/src/core/base/base_models/base_request.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/create_order/create_order_entity.dart';

class CreateOrderRequest extends BaseRequest {
  CreateOrderRequest(this.entity);
  final CreateOrderEntity entity;
}
