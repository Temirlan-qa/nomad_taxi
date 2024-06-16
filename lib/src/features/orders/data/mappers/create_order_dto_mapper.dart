import '../../domain/entities/create_order/create_order_entity.dart';
import '../../domain/entities/point/point_entity.dart';
import '../models/create_order/create_order_dto.dart';

class CreateOrderDtoMapper {
  CreateOrderEntity map(CreateOrderDto dto) {
    final List<PointEntity> points = dto.points
        .map((pointDto) => PointEntity(
              lat: pointDto.lat,
              lng: pointDto.lng,
              title: pointDto.title,
            ))
        .toList();

    return CreateOrderEntity(
      townId: dto.townId,
      price: dto.price,
      useBonus: dto.useBonus,
      points: points,
    );
  }
}
