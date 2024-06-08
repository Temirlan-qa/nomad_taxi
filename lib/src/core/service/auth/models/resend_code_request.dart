import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'resend_code_request.freezed.dart';
part 'resend_code_request.g.dart';

@freezed
class ResendCodeRequest extends BaseRequest with _$ResendCodeRequest {
  const factory ResendCodeRequest({
    @JsonKey(name: 'user_id') required String userId,
  }) = _ResendCodeRequest;

  factory ResendCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$ResendCodeRequestFromJson(json);
}
