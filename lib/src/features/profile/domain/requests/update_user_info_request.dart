import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'update_user_info_request.freezed.dart';
part 'update_user_info_request.g.dart';

@freezed
class UpdateUserInfoRequest extends BaseRequest with _$UpdateUserInfoRequest {
  const factory UpdateUserInfoRequest({
    required String name,
    required String lastName,
  }) = _UpdateUserInfoRequest;

  factory UpdateUserInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserInfoRequestFromJson(json);
}
