import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/base/base_models/base_entity.dart';

part 'support.freezed.dart';
part 'support.g.dart';

@freezed
class Support extends BaseEntity with _$Support {
  const factory Support({
    required String phone,
    required String feedback,
  }) = _Support;

  factory Support.fromJson(Map<String, dynamic> json) =>
      _$SupportFromJson(json);
}
