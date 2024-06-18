import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/promocode/promocode_entity.dart';

part 'promocode_response.freezed.dart';
part 'promocode_response.g.dart';

@freezed
class PromocodeResponse extends BaseEntity with _$PromocodeResponse {
  const factory PromocodeResponse({
    required bool success,
    required PromocodeEntity data,
  }) = _PromocodeResponse;

  factory PromocodeResponse.fromJson(Map<String, dynamic> json) =>
      _$PromocodeResponseFromJson(json);
}
