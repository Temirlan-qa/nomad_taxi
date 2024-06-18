import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'activate_promocode_request.freezed.dart';
part 'activate_promocode_request.g.dart';

@freezed
class ActivatePromocodeRequest extends BaseRequest
    with _$ActivatePromocodeRequest {
  const factory ActivatePromocodeRequest({
    @JsonKey(name: 'promocode') required String promocode,
    @JsonKey(name: 'town_id') required int townId,
  }) = _ActivatePromocodeRequest;

  factory ActivatePromocodeRequest.fromJson(Map<String, dynamic> json) =>
      _$ActivatePromocodeRequestFromJson(json);
}
