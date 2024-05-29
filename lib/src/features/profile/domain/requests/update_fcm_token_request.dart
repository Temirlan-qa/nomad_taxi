import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'update_fcm_token_request.freezed.dart';
part 'update_fcm_token_request.g.dart';

@freezed
class UpdateFcmTokenRequest extends BaseRequest with _$UpdateFcmTokenRequest {
  const factory UpdateFcmTokenRequest({
    @JsonKey(name: 'fcm_token') required String fcmToken,
  }) = _UpdateFcmTokenRequest;

  factory UpdateFcmTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateFcmTokenRequestFromJson(json);
}
