import 'package:nomad_taxi/src/features/order_search/data/models/cashback_info/cashback_info_dto.dart';
import 'package:nomad_taxi/src/features/order_search/domain/entities/cashback_info/cashback_info.dart';

class CashbackInfoDtoMapper {
  CashbackInfo map(CashbackInfoDto dto) {
    return CashbackInfo(
      id: dto.id,
      cashback: dto.cashback,
      maxAmount: dto.maxAmount,
      expiresAt: dto.expiresAt,
    );
  }
}
