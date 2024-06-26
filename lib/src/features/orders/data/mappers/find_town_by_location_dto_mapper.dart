import 'package:nomad_taxi/src/features/orders/data/models/find_town_by_location_response/find_town_by_location_response_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/inside_city/inside_city_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/support/support_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/town/town_dto.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/find_town_by_location_response/find_town_by_location_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/inside_city/inside_city_entity.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/inside_city/tariff_entity.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/support/support_entity.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/town/town_entity.dart';

class FindTownByLocationDtoMapper {
  FindTownByLocationResponse map(FindTownByLocationResponseDto dto) {
    final TownDto townDto = dto.data;
    final InsideCityDto? insideCity = townDto.insideCity;
    final SupportDto? supportDto = townDto.support;

    final city = insideCity != null
        ? InsideCityEntity(
            maxPrice: townDto.insideCity!.maxPrice,
            minPrice: townDto.insideCity!.minPrice,
            tariff: TariffEntity(
              title: townDto.insideCity!.tariff.title,
              description: townDto.insideCity!.tariff.description,
              commission: townDto.insideCity!.tariff.commission,
            ),
          )
        : const InsideCityEntity(
            maxPrice: 0,
            minPrice: 0,
            tariff: TariffEntity(
              title: '',
              description: '',
              commission: 0,
            ),
          );

    final support = supportDto != null
        ? SupportEntity(
            phone: supportDto.phone,
            feedback: supportDto.feedback,
          )
        : const SupportEntity(
            phone: '',
            feedback: '',
          );

    final TownEntity data = TownEntity(
      id: townDto.id,
      title: townDto.title,
      status: townDto.status,
      lat: townDto.lat,
      lng: townDto.lng,
      radius: townDto.radius,
      franchiseLink: townDto.franchiseLink,
      languageCode: townDto.languageCode,
      insideCity: city,
      support: support,
    );
    return FindTownByLocationResponse(
      status: dto.status,
      data: data,
    );
  }
}
