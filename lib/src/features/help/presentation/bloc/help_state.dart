part of 'help_bloc.dart';

@freezed
class HelpState with _$HelpState {
  const factory HelpState.initial() = _Initial;
  const factory HelpState.loading() = _Loading;
  const factory HelpState.loaded({
    required HelpViewModel viewModel,
  }) = _Loaded;
}

@freezed
class HelpViewModel with _$HelpViewModel {
  factory HelpViewModel({
    Questions? questions,
  }) = _HelpViewModel;
}
