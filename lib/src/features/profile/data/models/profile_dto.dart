import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../src/core/base/base_models/base_dto.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

@freezed
class ProfileDto extends BaseDto with _$ProfileDto {
  const factory ProfileDto({
    required String name,
    required String lastName,
    required String phone,
  }) = _ProfileDto;

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
}
