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
    @Default('') String id,
    @Default('') String title,
    @Default('') String status,
    @Default(0.0) double lat,
    @Default(0.0) double lng,
    @Default(0) int radius,
    @Default('ru') String languageCode,
    SupportEntity? support,
    InsideCityEntity? insideCity,
  }) = _MainViewModel;
}
