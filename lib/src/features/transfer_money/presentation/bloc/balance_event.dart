part of 'balance_bloc.dart';

@freezed
class BalanceEvent with _$BalanceEvent {
  const factory BalanceEvent.init() = _Init;
  const factory BalanceEvent.payInfo() = _PayInfo;
  const factory BalanceEvent.withdrawInfo() = _WithdrawInfo;
}
