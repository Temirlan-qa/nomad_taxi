// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'franchise_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FranchiseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() franchiseInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? franchiseInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? franchiseInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FranchiseInfo value) franchiseInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FranchiseInfo value)? franchiseInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FranchiseInfo value)? franchiseInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FranchiseEventCopyWith<$Res> {
  factory $FranchiseEventCopyWith(
          FranchiseEvent value, $Res Function(FranchiseEvent) then) =
      _$FranchiseEventCopyWithImpl<$Res, FranchiseEvent>;
}

/// @nodoc
class _$FranchiseEventCopyWithImpl<$Res, $Val extends FranchiseEvent>
    implements $FranchiseEventCopyWith<$Res> {
  _$FranchiseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FranchiseInfoImplCopyWith<$Res> {
  factory _$$FranchiseInfoImplCopyWith(
          _$FranchiseInfoImpl value, $Res Function(_$FranchiseInfoImpl) then) =
      __$$FranchiseInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FranchiseInfoImplCopyWithImpl<$Res>
    extends _$FranchiseEventCopyWithImpl<$Res, _$FranchiseInfoImpl>
    implements _$$FranchiseInfoImplCopyWith<$Res> {
  __$$FranchiseInfoImplCopyWithImpl(
      _$FranchiseInfoImpl _value, $Res Function(_$FranchiseInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FranchiseInfoImpl implements _FranchiseInfo {
  const _$FranchiseInfoImpl();

  @override
  String toString() {
    return 'FranchiseEvent.franchiseInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FranchiseInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() franchiseInfo,
  }) {
    return franchiseInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? franchiseInfo,
  }) {
    return franchiseInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? franchiseInfo,
    required TResult orElse(),
  }) {
    if (franchiseInfo != null) {
      return franchiseInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FranchiseInfo value) franchiseInfo,
  }) {
    return franchiseInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FranchiseInfo value)? franchiseInfo,
  }) {
    return franchiseInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FranchiseInfo value)? franchiseInfo,
    required TResult orElse(),
  }) {
    if (franchiseInfo != null) {
      return franchiseInfo(this);
    }
    return orElse();
  }
}

abstract class _FranchiseInfo implements FranchiseEvent {
  const factory _FranchiseInfo() = _$FranchiseInfoImpl;
}

/// @nodoc
mixin _$FranchiseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FranchiseViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FranchiseViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FranchiseViewModel viewModel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FranchiseStateCopyWith<$Res> {
  factory $FranchiseStateCopyWith(
          FranchiseState value, $Res Function(FranchiseState) then) =
      _$FranchiseStateCopyWithImpl<$Res, FranchiseState>;
}

/// @nodoc
class _$FranchiseStateCopyWithImpl<$Res, $Val extends FranchiseState>
    implements $FranchiseStateCopyWith<$Res> {
  _$FranchiseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FranchiseStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FranchiseState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FranchiseViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FranchiseViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FranchiseViewModel viewModel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FranchiseState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FranchiseViewModel viewModel});

  $FranchiseViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$FranchiseStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_$LoadedImpl(
      viewModel: null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as FranchiseViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FranchiseViewModelCopyWith<$Res> get viewModel {
    return $FranchiseViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.viewModel});

  @override
  final FranchiseViewModel viewModel;

  @override
  String toString() {
    return 'FranchiseState.loaded(viewModel: $viewModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FranchiseViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FranchiseViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FranchiseViewModel viewModel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FranchiseState {
  const factory _Loaded({required final FranchiseViewModel viewModel}) =
      _$LoadedImpl;

  FranchiseViewModel get viewModel;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$FranchiseStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FranchiseState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FranchiseViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FranchiseViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FranchiseViewModel viewModel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FranchiseState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FranchiseViewModel {
  String get franchise => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FranchiseViewModelCopyWith<FranchiseViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FranchiseViewModelCopyWith<$Res> {
  factory $FranchiseViewModelCopyWith(
          FranchiseViewModel value, $Res Function(FranchiseViewModel) then) =
      _$FranchiseViewModelCopyWithImpl<$Res, FranchiseViewModel>;
  @useResult
  $Res call({String franchise});
}

/// @nodoc
class _$FranchiseViewModelCopyWithImpl<$Res, $Val extends FranchiseViewModel>
    implements $FranchiseViewModelCopyWith<$Res> {
  _$FranchiseViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? franchise = null,
  }) {
    return _then(_value.copyWith(
      franchise: null == franchise
          ? _value.franchise
          : franchise // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FranchiseViewModelImplCopyWith<$Res>
    implements $FranchiseViewModelCopyWith<$Res> {
  factory _$$FranchiseViewModelImplCopyWith(_$FranchiseViewModelImpl value,
          $Res Function(_$FranchiseViewModelImpl) then) =
      __$$FranchiseViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String franchise});
}

/// @nodoc
class __$$FranchiseViewModelImplCopyWithImpl<$Res>
    extends _$FranchiseViewModelCopyWithImpl<$Res, _$FranchiseViewModelImpl>
    implements _$$FranchiseViewModelImplCopyWith<$Res> {
  __$$FranchiseViewModelImplCopyWithImpl(_$FranchiseViewModelImpl _value,
      $Res Function(_$FranchiseViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? franchise = null,
  }) {
    return _then(_$FranchiseViewModelImpl(
      franchise: null == franchise
          ? _value.franchise
          : franchise // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FranchiseViewModelImpl implements _FranchiseViewModel {
  _$FranchiseViewModelImpl({this.franchise = ''});

  @override
  @JsonKey()
  final String franchise;

  @override
  String toString() {
    return 'FranchiseViewModel(franchise: $franchise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FranchiseViewModelImpl &&
            (identical(other.franchise, franchise) ||
                other.franchise == franchise));
  }

  @override
  int get hashCode => Object.hash(runtimeType, franchise);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FranchiseViewModelImplCopyWith<_$FranchiseViewModelImpl> get copyWith =>
      __$$FranchiseViewModelImplCopyWithImpl<_$FranchiseViewModelImpl>(
          this, _$identity);
}

abstract class _FranchiseViewModel implements FranchiseViewModel {
  factory _FranchiseViewModel({final String franchise}) =
      _$FranchiseViewModelImpl;

  @override
  String get franchise;
  @override
  @JsonKey(ignore: true)
  _$$FranchiseViewModelImplCopyWith<_$FranchiseViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
