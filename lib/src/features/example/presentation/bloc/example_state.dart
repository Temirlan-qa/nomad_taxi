part of 'example_bloc.dart';

@freezed
class ExampleState with _$ExampleState {
  const factory ExampleState.initial() = _Initial;
  const factory ExampleState.loading() = _Loading;
  const factory ExampleState.loaded({
    required ExampleStateViewModel viewModel,
  }) = _Loaded;
}

@freezed
class ExampleStateViewModel with _$ExampleStateViewModel {
  factory ExampleStateViewModel({
    @Default([]) List selecteds,
  }) = _ExampleStateViewModel;
}
