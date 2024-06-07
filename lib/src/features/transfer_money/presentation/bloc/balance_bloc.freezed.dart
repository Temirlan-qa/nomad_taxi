// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BalanceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() payInfo,
    required TResult Function() withdrawInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? payInfo,
    TResult? Function()? withdrawInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? payInfo,
    TResult Function()? withdrawInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PayInfo value) payInfo,
    required TResult Function(_WithdrawInfo value) withdrawInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PayInfo value)? payInfo,
    TResult? Function(_WithdrawInfo value)? withdrawInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PayInfo value)? payInfo,
    TResult Function(_WithdrawInfo value)? withdrawInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceEventCopyWith<$Res> {
  factory $BalanceEventCopyWith(
          BalanceEvent value, $Res Function(BalanceEvent) then) =
      _$BalanceEventCopyWithImpl<$Res, BalanceEvent>;
}

/// @nodoc
class _$BalanceEventCopyWithImpl<$Res, $Val extends BalanceEvent>
    implements $BalanceEventCopyWith<$Res> {
  _$BalanceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$BalanceEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'BalanceEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() payInfo,
    required TResult Function() withdrawInfo,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? payInfo,
    TResult? Function()? withdrawInfo,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? payInfo,
    TResult Function()? withdrawInfo,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PayInfo value) payInfo,
    required TResult Function(_WithdrawInfo value) withdrawInfo,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PayInfo value)? payInfo,
    TResult? Function(_WithdrawInfo value)? withdrawInfo,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PayInfo value)? payInfo,
    TResult Function(_WithdrawInfo value)? withdrawInfo,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements BalanceEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$PayInfoImplCopyWith<$Res> {
  factory _$$PayInfoImplCopyWith(
          _$PayInfoImpl value, $Res Function(_$PayInfoImpl) then) =
      __$$PayInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PayInfoImplCopyWithImpl<$Res>
    extends _$BalanceEventCopyWithImpl<$Res, _$PayInfoImpl>
    implements _$$PayInfoImplCopyWith<$Res> {
  __$$PayInfoImplCopyWithImpl(
      _$PayInfoImpl _value, $Res Function(_$PayInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PayInfoImpl implements _PayInfo {
  const _$PayInfoImpl();

  @override
  String toString() {
    return 'BalanceEvent.payInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PayInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() payInfo,
    required TResult Function() withdrawInfo,
  }) {
    return payInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? payInfo,
    TResult? Function()? withdrawInfo,
  }) {
    return payInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? payInfo,
    TResult Function()? withdrawInfo,
    required TResult orElse(),
  }) {
    if (payInfo != null) {
      return payInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PayInfo value) payInfo,
    required TResult Function(_WithdrawInfo value) withdrawInfo,
  }) {
    return payInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PayInfo value)? payInfo,
    TResult? Function(_WithdrawInfo value)? withdrawInfo,
  }) {
    return payInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PayInfo value)? payInfo,
    TResult Function(_WithdrawInfo value)? withdrawInfo,
    required TResult orElse(),
  }) {
    if (payInfo != null) {
      return payInfo(this);
    }
    return orElse();
  }
}

abstract class _PayInfo implements BalanceEvent {
  const factory _PayInfo() = _$PayInfoImpl;
}

/// @nodoc
abstract class _$$WithdrawInfoImplCopyWith<$Res> {
  factory _$$WithdrawInfoImplCopyWith(
          _$WithdrawInfoImpl value, $Res Function(_$WithdrawInfoImpl) then) =
      __$$WithdrawInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WithdrawInfoImplCopyWithImpl<$Res>
    extends _$BalanceEventCopyWithImpl<$Res, _$WithdrawInfoImpl>
    implements _$$WithdrawInfoImplCopyWith<$Res> {
  __$$WithdrawInfoImplCopyWithImpl(
      _$WithdrawInfoImpl _value, $Res Function(_$WithdrawInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WithdrawInfoImpl implements _WithdrawInfo {
  const _$WithdrawInfoImpl();

  @override
  String toString() {
    return 'BalanceEvent.withdrawInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WithdrawInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() payInfo,
    required TResult Function() withdrawInfo,
  }) {
    return withdrawInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? payInfo,
    TResult? Function()? withdrawInfo,
  }) {
    return withdrawInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? payInfo,
    TResult Function()? withdrawInfo,
    required TResult orElse(),
  }) {
    if (withdrawInfo != null) {
      return withdrawInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PayInfo value) payInfo,
    required TResult Function(_WithdrawInfo value) withdrawInfo,
  }) {
    return withdrawInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PayInfo value)? payInfo,
    TResult? Function(_WithdrawInfo value)? withdrawInfo,
  }) {
    return withdrawInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PayInfo value)? payInfo,
    TResult Function(_WithdrawInfo value)? withdrawInfo,
    required TResult orElse(),
  }) {
    if (withdrawInfo != null) {
      return withdrawInfo(this);
    }
    return orElse();
  }
}

abstract class _WithdrawInfo implements BalanceEvent {
  const factory _WithdrawInfo() = _$WithdrawInfoImpl;
}

/// @nodoc
mixin _$BalanceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BalanceViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(BalanceViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BalanceViewModel viewModel)? loaded,
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
abstract class $BalanceStateCopyWith<$Res> {
  factory $BalanceStateCopyWith(
          BalanceState value, $Res Function(BalanceState) then) =
      _$BalanceStateCopyWithImpl<$Res, BalanceState>;
}

/// @nodoc
class _$BalanceStateCopyWithImpl<$Res, $Val extends BalanceState>
    implements $BalanceStateCopyWith<$Res> {
  _$BalanceStateCopyWithImpl(this._value, this._then);

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
    extends _$BalanceStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'BalanceState.initial()';
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
    required TResult Function(BalanceViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(BalanceViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BalanceViewModel viewModel)? loaded,
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

abstract class _Initial implements BalanceState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BalanceViewModel viewModel});

  $BalanceViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BalanceStateCopyWithImpl<$Res, _$LoadedImpl>
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
              as BalanceViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BalanceViewModelCopyWith<$Res> get viewModel {
    return $BalanceViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.viewModel});

  @override
  final BalanceViewModel viewModel;

  @override
  String toString() {
    return 'BalanceState.loaded(viewModel: $viewModel)';
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
    required TResult Function(BalanceViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(BalanceViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BalanceViewModel viewModel)? loaded,
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

abstract class _Loaded implements BalanceState {
  const factory _Loaded({required final BalanceViewModel viewModel}) =
      _$LoadedImpl;

  BalanceViewModel get viewModel;
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
    extends _$BalanceStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'BalanceState.error(error: $error)';
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
    required TResult Function(BalanceViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(BalanceViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BalanceViewModel viewModel)? loaded,
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

abstract class _Error implements BalanceState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BalanceViewModel {
  String get payInfo => throw _privateConstructorUsedError;
  String get withdrawInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BalanceViewModelCopyWith<BalanceViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceViewModelCopyWith<$Res> {
  factory $BalanceViewModelCopyWith(
          BalanceViewModel value, $Res Function(BalanceViewModel) then) =
      _$BalanceViewModelCopyWithImpl<$Res, BalanceViewModel>;
  @useResult
  $Res call({String payInfo, String withdrawInfo});
}

/// @nodoc
class _$BalanceViewModelCopyWithImpl<$Res, $Val extends BalanceViewModel>
    implements $BalanceViewModelCopyWith<$Res> {
  _$BalanceViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payInfo = null,
    Object? withdrawInfo = null,
  }) {
    return _then(_value.copyWith(
      payInfo: null == payInfo
          ? _value.payInfo
          : payInfo // ignore: cast_nullable_to_non_nullable
              as String,
      withdrawInfo: null == withdrawInfo
          ? _value.withdrawInfo
          : withdrawInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BalanceViewModelImplCopyWith<$Res>
    implements $BalanceViewModelCopyWith<$Res> {
  factory _$$BalanceViewModelImplCopyWith(_$BalanceViewModelImpl value,
          $Res Function(_$BalanceViewModelImpl) then) =
      __$$BalanceViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String payInfo, String withdrawInfo});
}

/// @nodoc
class __$$BalanceViewModelImplCopyWithImpl<$Res>
    extends _$BalanceViewModelCopyWithImpl<$Res, _$BalanceViewModelImpl>
    implements _$$BalanceViewModelImplCopyWith<$Res> {
  __$$BalanceViewModelImplCopyWithImpl(_$BalanceViewModelImpl _value,
      $Res Function(_$BalanceViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payInfo = null,
    Object? withdrawInfo = null,
  }) {
    return _then(_$BalanceViewModelImpl(
      payInfo: null == payInfo
          ? _value.payInfo
          : payInfo // ignore: cast_nullable_to_non_nullable
              as String,
      withdrawInfo: null == withdrawInfo
          ? _value.withdrawInfo
          : withdrawInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BalanceViewModelImpl implements _BalanceViewModel {
  const _$BalanceViewModelImpl({this.payInfo = '', this.withdrawInfo = ''});

  @override
  @JsonKey()
  final String payInfo;
  @override
  @JsonKey()
  final String withdrawInfo;

  @override
  String toString() {
    return 'BalanceViewModel(payInfo: $payInfo, withdrawInfo: $withdrawInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BalanceViewModelImpl &&
            (identical(other.payInfo, payInfo) || other.payInfo == payInfo) &&
            (identical(other.withdrawInfo, withdrawInfo) ||
                other.withdrawInfo == withdrawInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payInfo, withdrawInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BalanceViewModelImplCopyWith<_$BalanceViewModelImpl> get copyWith =>
      __$$BalanceViewModelImplCopyWithImpl<_$BalanceViewModelImpl>(
          this, _$identity);
}

abstract class _BalanceViewModel implements BalanceViewModel {
  const factory _BalanceViewModel(
      {final String payInfo,
      final String withdrawInfo}) = _$BalanceViewModelImpl;

  @override
  String get payInfo;
  @override
  String get withdrawInfo;
  @override
  @JsonKey(ignore: true)
  _$$BalanceViewModelImplCopyWith<_$BalanceViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
