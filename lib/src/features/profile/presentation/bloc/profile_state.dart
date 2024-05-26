part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loaded({
    required ProfileViewModel viewModel,
  }) = _Loaded;
}

@freezed
class ProfileViewModel with _$ProfileViewModel {
  const factory ProfileViewModel({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String phone,
  }) = _ProfileViewModel;
}
