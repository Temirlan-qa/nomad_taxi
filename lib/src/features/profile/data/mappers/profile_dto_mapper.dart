import 'package:nomad_taxi/src/features/profile/data/models/profile_dto.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/profile_entity.dart';

import '../models/finance/finance_dto.dart';
import '../models/partner/partner_dto.dart';

class ProfileDtoMapper {
  ProfileEntity map(ProfileDto dto) {
    final PartnerDto? partnerDto = dto.partner;

    if (partnerDto != null) {
      final FinanceDto financeDto = partnerDto.finance;

      return ProfileEntity(
        firstName: dto.firstName ?? '',
        lastName: dto.lastName ?? '',
        phone: dto.phone,
        id: dto.id,
        languageCode: dto.languageCode,
        isBlocked: dto.isBlocked,
        bonus: dto.bonus,
        fcmToken: dto.fcmToken,

        // Partner
        pBalance: financeDto.balance,
        pBonus: financeDto.bonus,
        pCarModel: partnerDto.carModel,
        pCarNumber: partnerDto.carNumber,
        pFirstName: partnerDto.firstName,
        pId: partnerDto.id,
        pLastName: partnerDto.lastName,
        pStatus: partnerDto.status,
        pTownId: partnerDto.townId,
      );
    }

    return ProfileEntity(
      firstName: dto.firstName ?? '',
      lastName: dto.lastName ?? '',
      phone: dto.phone,
      id: dto.id,
      languageCode: dto.languageCode,
      isBlocked: dto.isBlocked,
      bonus: dto.bonus,
      fcmToken: dto.fcmToken,
    );
  }
}
