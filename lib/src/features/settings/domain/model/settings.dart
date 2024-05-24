import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    required Locale locale,
  }) = _Settings;
}
