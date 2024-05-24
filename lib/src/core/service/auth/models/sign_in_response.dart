import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/service/auth/models/data_response.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'sign_in_response.freezed.dart';
part 'sign_in_response.g.dart';

@freezed
class SignInResponse extends BaseEntity with _$SignInResponse {
  const factory SignInResponse({
    required String status,
    required DataResponse data,
  }) = _SignInResponse;

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);
}
