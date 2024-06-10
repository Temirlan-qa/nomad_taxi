import '../../domain/entities/create_order/create_order_entity.dart';
import '../models/create_order/create_order_dto.dart';

class CreateOrderDtoMapper {
  CreateOrderEntity map(CreateOrderDto dto) {
    return CreateOrderEntity(
      townId: dto.townId,
      price: dto.price,
      useBonus: dto.useBonus,
      startPointLat: dto.startPointLat,
      startPointLng: dto.startPointLng,
      startPointTitle: dto.startPointTitle,
      endPointLat: dto.endPointLat,
      endPointLng: dto.endPointLng,
      endPointTitle: dto.endPointTitle,
    );
  }
}
