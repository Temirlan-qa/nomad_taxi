import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../src/core/base/base_models/base_dto.dart';

part 'finance_dto.freezed.dart';
part 'finance_dto.g.dart';

@freezed
class FinanceDto extends BaseDto with _$FinanceDto {
  const factory FinanceDto({
    int? balance,
    int? bonus,
  }) = _FinanceDto;

  factory FinanceDto.fromJson(Map<String, dynamic> json) =>
      _$FinanceDtoFromJson(json);
}
