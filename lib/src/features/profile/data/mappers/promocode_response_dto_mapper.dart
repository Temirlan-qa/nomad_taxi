import 'package:nomad_taxi/src/features/profile/data/models/promocode_response/promocode_response_dto.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/promocode/promocode_entity.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/promocode_response/promocode_response.dart';

class PromocodeResponseDtoMapper {
  PromocodeResponse map(PromocodeResponseDto dto) {
    return PromocodeResponse(
      data: PromocodeEntity(
          amount: dto.data.amount, description: dto.data.description),
      success: dto.success,
    );
  }
}
