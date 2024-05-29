import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'update_language_request.freezed.dart';
part 'update_language_request.g.dart';

@freezed
class UpdateLanguageRequest extends BaseRequest with _$UpdateLanguageRequest {
  const factory UpdateLanguageRequest({
    @JsonKey(name: 'language_code') required String languageCode,
  }) = _UpdateLanguageRequest;

  factory UpdateLanguageRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateLanguageRequestFromJson(json);
}
