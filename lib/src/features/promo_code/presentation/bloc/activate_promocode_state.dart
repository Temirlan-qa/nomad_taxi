part of 'activate_promocode_bloc.dart';

@freezed
class ActivatePromocodeState with _$ActivatePromocodeState {
  const factory ActivatePromocodeState.initial() = _Initial;
  const factory ActivatePromocodeState.loading() = _Loading;
  const factory ActivatePromocodeState.error(
      {required DomainException exception}) = _Error;
  const factory ActivatePromocodeState.loaded({
    required ActivatePromocodeViewModel viewModel,
  }) = _Loaded;
}

@freezed
class ActivatePromocodeViewModel with _$ActivatePromocodeViewModel {
  factory ActivatePromocodeViewModel({
    PromocodeResponse? promocodeResponse,
  }) = _ActivatePromocodeViewModel;
}
