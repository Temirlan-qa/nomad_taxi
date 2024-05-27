import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'verify_data_response.freezed.dart';
part 'verify_data_response.g.dart';

@freezed
class VerifyDataResponse extends BaseEntity with _$VerifyDataResponse {
  const factory VerifyDataResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'token_type') required String tokenType,
    @JsonKey(name: 'expires_in') required int expiresIn,
  }) = _VerifyDataResponse;

  factory VerifyDataResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyDataResponseFromJson(json);
}
