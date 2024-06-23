part of 'franchise_bloc.dart';

@freezed
class FranchiseState with _$FranchiseState {
  const factory FranchiseState.initial() = _Initial;
  const factory FranchiseState.loaded({
    required FranchiseViewModel viewModel,
  }) = _Loaded;
  const factory FranchiseState.error(String error) = _Error;
}

@freezed
class FranchiseViewModel with _$FranchiseViewModel {
  factory FranchiseViewModel({
    WebViewController? franchise,
  }) = _FranchiseViewModel;
}
