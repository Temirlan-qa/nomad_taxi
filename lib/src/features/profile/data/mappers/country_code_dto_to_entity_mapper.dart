import 'package:nomad_taxi/src/features/profile/data/models/finance/finance_dto.dart';
import 'package:nomad_taxi/src/features/profile/data/models/profile_dto.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/finance/finance.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/profile_entity.dart';

import '../../domain/entities/partner/partner.dart';
import '../models/partner/partner_dto.dart';

class ProfileDtoMapper {
  ProfileEntity map(ProfileDto dto) {
    final FinanceDto financeDto = dto.partner.finance;
    final Finance finance = Finance(
      balance: financeDto.balance,
      bonus: financeDto.bonus,
    );

    final PartnerDto partnerDto = dto.partner;
    final Partner partner = Partner(
      id: partnerDto.id,
      firstName: partnerDto.firstName,
      carModel: partnerDto.carModel,
      townId: partnerDto.townId,
      carNumber: partnerDto.carNumber,
      lastName: partnerDto.lastName,
      status: partnerDto.status,
      finance: finance,
    );

    return ProfileEntity(
      firstName: dto.firstName,
      lastName: dto.lastName,
      phone: dto.phone,
      id: dto.id,
      languageCode: dto.languageCode,
      isBlocked: dto.isBlocked,
      bonus: dto.bonus,
      partner: partner,
    );
  }
}
