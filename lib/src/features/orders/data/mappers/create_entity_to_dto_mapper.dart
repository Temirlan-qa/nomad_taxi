import 'package:nomad_taxi/src/features/orders/data/models/create_order/create_order_dto.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/create_order/create_order_entity.dart';

import '../models/point/point_dto.dart';

class CreateEntityToDtoMapper {
  CreateOrderDto map(CreateOrderEntity from){
    final List<PointDto> pointsDto = from.points
        .map((point) => PointDto(
              lat: point.lat,
              lng: point.lng,
              title: point.title,
            ))
        .toList();

    return CreateOrderDto(
      price: from.price,
      points: pointsDto,
      useBonus: from.useBonus,
    );
  }
}