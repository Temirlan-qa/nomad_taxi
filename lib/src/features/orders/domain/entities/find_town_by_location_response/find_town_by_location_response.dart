import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_entity.dart';

import '../town/town_entity.dart';

part 'find_town_by_location_response.freezed.dart';
part 'find_town_by_location_response.g.dart';

@freezed
class FindTownByLocationResponse extends BaseEntity
    with _$FindTownByLocationResponse {
  const factory FindTownByLocationResponse({
    required String status,
    required TownEntity data,
  }) = _FindTownByLocationResponse;

  factory FindTownByLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$FindTownByLocationResponseFromJson(json);
}
