part of 'balance_bloc.dart';

@freezed
class BalanceState with _$BalanceState {
  const factory BalanceState.initial() = _Initial;
  const factory BalanceState.loaded({
    required BalanceViewModel viewModel,
  }) = _Loaded;
  const factory BalanceState.error(String error) = _Error;
}

@freezed
class BalanceViewModel with _$BalanceViewModel {
  factory BalanceViewModel({
    @Default('') String payInfo,
    @Default('') String withdrawInfo,
  }) = _BalanceViewModel;
}
