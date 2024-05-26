import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_entity.dart';

part 'finance.freezed.dart';
part 'finance.g.dart';

@freezed
class Finance extends BaseEntity with _$Finance {
  const factory Finance({
    required int balance,
    required int bonus,
  }) = _Finance;

  factory Finance.fromJson(Map<String, dynamic> json) =>
      _$FinanceFromJson(json);
}
