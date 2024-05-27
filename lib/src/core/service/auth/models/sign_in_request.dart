import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'sign_in_request.freezed.dart';
part 'sign_in_request.g.dart';

@freezed
class SignInRequest extends BaseRequest with _$SignInRequest {
  const factory SignInRequest({
    required String phone,
  }) = _SignInRequest;

  factory SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestFromJson(json);
}
