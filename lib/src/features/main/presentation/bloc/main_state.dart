part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = _Initial;
  const factory MainState.loaded({
    required MainViewModel viewModel,
  }) = _Loaded;
  const factory MainState.error(String error) = _Error;
}

@freezed
class MainViewModel with _$MainViewModel {
  factory MainViewModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String status,
    @Default('') String lat,
    @Default('') String lng,
    @Default(0) int radius,
    @Default('ru') String languageCode,
    SupportEntity? support,
    InsideCityEntity? insideCity,
    @Default('') String franchiseLink,
  }) = _MainViewModel;
}
