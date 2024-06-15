import 'package:nomad_taxi/src/features/orders/data/models/order/order_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/pay_method/pay_method_dto.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/pay_method/pay_method_entity.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/finance/finance.dart';

import '../../../profile/data/models/finance/finance_dto.dart';
import '../../../profile/data/models/partner/partner_dto.dart';
import '../../../profile/domain/entities/partner/partner.dart';
import '../../domain/entities/order/order_entity.dart';
import '../../domain/entities/point/point_entity.dart';
import '../models/point/point_dto.dart';

class OrderDtoMapper {
  OrderEntity map(OrderDto dto) {
    final PayMethodDto? payMethodDto = dto.payMethod;
    final PayMethodEntity payMethodEntity = PayMethodEntity(
      byCash: payMethodDto == null ? 0 :  payMethodDto.byCash,
      byBonus: payMethodDto == null ? 0 :  payMethodDto.byBonus,
    );

    final List<PointDto> pointsDto = dto.points;

    final List<PointEntity> points = pointsDto.map((pointDto) {
      return PointEntity(
        title: pointDto.title,
        lat: pointDto.lat,
        lng: pointDto.lng,
      );
    }).toList();

    final FinanceDto? financeDto = dto.partner?.finance;
    final Finance finance = Finance(
      balance: financeDto?.balance,
      bonus: financeDto?.bonus,
    );

    final PartnerDto? partnerDto = dto.partner;
    final Partner partner = Partner(
      id: partnerDto?.id,
      firstName: partnerDto?.firstName,
      carModel: partnerDto?.carModel,
      townId: partnerDto?.townId,
      carNumber: partnerDto?.carNumber,
      lastName: partnerDto?.lastName,
      status: partnerDto?.status,
      finance: finance,
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
      waitingTime: dto.waitingTime,
      partner: partner,
      payMethod: payMethodEntity,
      phone: dto.phone,
      townId: dto.townId,
      points: points,
    );
  }
}
