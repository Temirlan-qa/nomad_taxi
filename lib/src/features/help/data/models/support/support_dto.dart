import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_dto.dart';

part 'support_dto.freezed.dart';
part 'support_dto.g.dart';

@freezed
class SupportDto extends BaseDto with _$SupportDto {
  const factory SupportDto({
    required String phone,
    required String feedback,
  }) = _SupportDto;

  factory SupportDto.fromJson(Map<String, dynamic> json) =>
      _$SupportDtoFromJson(json);
}
