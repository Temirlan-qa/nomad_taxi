import '../../domain/entities/pay_method/pay_method_entity.dart';
import '../models/pay_method/pay_method_dto.dart';

class PayMethodDtoMapper {
  PayMethodEntity map(PayMethodDto dto) {
    return PayMethodEntity(
      byCash: dto.byCash,
      byBonus: dto.byBonus,
    );
  }
}
