import 'package:nomad_taxi/src/features/orders/data/models/order/order_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/point/point_dto.dart';

import '../../domain/entities/order/order_entity.dart';
import '../../domain/entities/point/point_entity.dart';

class OrderDtoMapper {
  OrderEntity map(OrderDto dto) {
    final List<PointDto>? pointsDto = dto.points;
    final List<PointEntity>? points = pointsDto?.map((pointDto) {
      return PointEntity(
        title: pointDto.title,
        lat: pointDto.lat,
        lng: pointDto.lng,
      );
    }).toList();

    return OrderEntity(
      id: dto.id,
      startPoint: dto.startPoint,
      endPoint: dto.endPoint,
      price: dto.price,
      comment: dto.comment,
      status: dto.status,
      hasRoute: dto.hasRoute,
      // createdAt: dto.createdAt,
      // waitingTime: dto.waitingTime,
      // partner: partner,
      // payMethod: payMethodEntity,
      // phone: dto.phone,
      // townId: dto.townId,
      points: points,
    );
    // final PayMethodDto payMethodDto = dto.payMethod;
    // final PayMethodEntity payMethodEntity = PayMethodEntity(
    //   byCash: payMethodDto.byCash,
    //   byBonus: payMethodDto.byBonus,
    // );

    // final FinanceDto? financeDto = dto.partner!.finance;
    // final Finance finance = Finance(
    //   balance: financeDto?.balance,
    //   bonus: financeDto?.bonus,
    // );

    // final PartnerDto? partnerDto = dto.partner;
    // final Partner partner = Partner(
    //     id: partnerDto!.id,
    //     firstName: partnerDto.firstName,
    //     carModel: partnerDto.carModel,
    //     townId: partnerDto.townId,
    //     carNumber: partnerDto.carNumber,
    //     lastName: partnerDto.lastName,
    //     status: partnerDto.status,
    //     finance: finance);
  }
}
