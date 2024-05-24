import 'package:nomad_taxi/src/features/profile/data/models/profile_dto.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/profile_entity.dart';

class ProfileDtoMapper {
  ProfileEntity map(ProfileDto dto) {
    return ProfileEntity(
      name: dto.name,
      lastName: dto.lastName,
      phone: dto.phone,
    );
  }
}
