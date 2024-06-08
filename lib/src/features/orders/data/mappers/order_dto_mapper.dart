import 'package:nomad_taxi/src/features/orders/data/models/order/order_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/pay_method/pay_method_dto.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/pay_method/pay_method_entity.dart';

import '../../domain/entities/order/order_entity.dart';

class ProfileDtoMapper {
  OrderEntity map(OrderDto dto) {
    final PayMethodDto payMethodDto = dto.payMethod;
    final PayMethodEntity payMethodEntity = PayMethodEntity(
      byCash: payMethodDto.byCash,
      byBonus: payMethodDto.byBonus,
    );
    return OrderEntity(
      id: dto.id,
      startPoint: dto.startPoint,
      endPoint: dto.endPoint,
      price: dto.price,
      comment: dto.comment,
      status: dto.status,
      hasRoute: dto.hasRoute,
      createdAt: dto.createdAt,
      payMethod: payMethodEntity,
      phone: dto.phone,
      townId: dto.townId,
      points: dto.points,
    );
  }
}
