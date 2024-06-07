import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'update_partner_data_request.freezed.dart';
part 'update_partner_data_request.g.dart';

@freezed
class UpdatePartnerDataRequest extends BaseRequest
    with _$UpdatePartnerDataRequest {
  const factory UpdatePartnerDataRequest({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'car_model') required String carModel,
    @JsonKey(name: 'car_number') required String carNumber,
    @JsonKey(name: 'town_id') required int townId,
  }) = _UpdatePartnerDataRequest;

  factory UpdatePartnerDataRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePartnerDataRequestFromJson(json);
}
