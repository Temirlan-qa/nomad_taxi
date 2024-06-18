// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activate_promocode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivatePromocodeEvent {
  ActivatePromocodeRequest get request => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActivatePromocodeRequest request)
        acivatePromocode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActivatePromocodeRequest request)? acivatePromocode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActivatePromocodeRequest request)? acivatePromocode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActivatePromocode value) acivatePromocode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActivatePromocode value)? acivatePromocode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActivatePromocode value)? acivatePromocode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivatePromocodeEventCopyWith<ActivatePromocodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivatePromocodeEventCopyWith<$Res> {
  factory $ActivatePromocodeEventCopyWith(ActivatePromocodeEvent value,
          $Res Function(ActivatePromocodeEvent) then) =
      _$ActivatePromocodeEventCopyWithImpl<$Res, ActivatePromocodeEvent>;
  @useResult
  $Res call({ActivatePromocodeRequest request});

  $ActivatePromocodeRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$ActivatePromocodeEventCopyWithImpl<$Res,
        $Val extends ActivatePromocodeEvent>
    implements $ActivatePromocodeEventCopyWith<$Res> {
  _$ActivatePromocodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ActivatePromocodeRequest,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActivatePromocodeRequestCopyWith<$Res> get request {
    return $ActivatePromocodeRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivatePromocodeImplCopyWith<$Res>
    implements $ActivatePromocodeEventCopyWith<$Res> {
  factory _$$ActivatePromocodeImplCopyWith(_$ActivatePromocodeImpl value,
          $Res Function(_$ActivatePromocodeImpl) then) =
      __$$ActivatePromocodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActivatePromocodeRequest request});

  @override
  $ActivatePromocodeRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$ActivatePromocodeImplCopyWithImpl<$Res>
    extends _$ActivatePromocodeEventCopyWithImpl<$Res, _$ActivatePromocodeImpl>
    implements _$$ActivatePromocodeImplCopyWith<$Res> {
  __$$ActivatePromocodeImplCopyWithImpl(_$ActivatePromocodeImpl _value,
      $Res Function(_$ActivatePromocodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$ActivatePromocodeImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ActivatePromocodeRequest,
    ));
  }
}

/// @nodoc

class _$ActivatePromocodeImpl implements _ActivatePromocode {
  const _$ActivatePromocodeImpl({required this.request});

  @override
  final ActivatePromocodeRequest request;

  @override
  String toString() {
    return 'ActivatePromocodeEvent.acivatePromocode(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivatePromocodeImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivatePromocodeImplCopyWith<_$ActivatePromocodeImpl> get copyWith =>
      __$$ActivatePromocodeImplCopyWithImpl<_$ActivatePromocodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActivatePromocodeRequest request)
        acivatePromocode,
  }) {
    return acivatePromocode(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActivatePromocodeRequest request)? acivatePromocode,
  }) {
    return acivatePromocode?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActivatePromocodeRequest request)? acivatePromocode,
    required TResult orElse(),
  }) {
    if (acivatePromocode != null) {
      return acivatePromocode(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActivatePromocode value) acivatePromocode,
  }) {
    return acivatePromocode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActivatePromocode value)? acivatePromocode,
  }) {
    return acivatePromocode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActivatePromocode value)? acivatePromocode,
    required TResult orElse(),
  }) {
    if (acivatePromocode != null) {
      return acivatePromocode(this);
    }
    return orElse();
  }
}

abstract class _ActivatePromocode implements ActivatePromocodeEvent {
  const factory _ActivatePromocode(
          {required final ActivatePromocodeRequest request}) =
      _$ActivatePromocodeImpl;

  @override
  ActivatePromocodeRequest get request;
  @override
  @JsonKey(ignore: true)
  _$$ActivatePromocodeImplCopyWith<_$ActivatePromocodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActivatePromocodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DomainException exception) error,
    required TResult Function(ActivatePromocodeViewModel viewModel) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DomainException exception)? error,
    TResult? Function(ActivatePromocodeViewModel viewModel)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DomainException exception)? error,
    TResult Function(ActivatePromocodeViewModel viewModel)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivatePromocodeStateCopyWith<$Res> {
  factory $ActivatePromocodeStateCopyWith(ActivatePromocodeState value,
          $Res Function(ActivatePromocodeState) then) =
      _$ActivatePromocodeStateCopyWithImpl<$Res, ActivatePromocodeState>;
}

/// @nodoc
class _$ActivatePromocodeStateCopyWithImpl<$Res,
        $Val extends ActivatePromocodeState>
    implements $ActivatePromocodeStateCopyWith<$Res> {
  _$ActivatePromocodeStateCopyWithImpl(this._value, this._then);

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
    extends _$ActivatePromocodeStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ActivatePromocodeState.initial()';
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
    required TResult Function() loading,
    required TResult Function(DomainException exception) error,
    required TResult Function(ActivatePromocodeViewModel viewModel) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DomainException exception)? error,
    TResult? Function(ActivatePromocodeViewModel viewModel)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DomainException exception)? error,
    TResult Function(ActivatePromocodeViewModel viewModel)? loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ActivatePromocodeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ActivatePromocodeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ActivatePromocodeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DomainException exception) error,
    required TResult Function(ActivatePromocodeViewModel viewModel) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DomainException exception)? error,
    TResult? Function(ActivatePromocodeViewModel viewModel)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DomainException exception)? error,
    TResult Function(ActivatePromocodeViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ActivatePromocodeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DomainException exception});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ActivatePromocodeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$ErrorImpl(
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as DomainException,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.exception});

  @override
  final DomainException exception;

  @override
  String toString() {
    return 'ActivatePromocodeState.error(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DomainException exception) error,
    required TResult Function(ActivatePromocodeViewModel viewModel) loaded,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DomainException exception)? error,
    TResult? Function(ActivatePromocodeViewModel viewModel)? loaded,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DomainException exception)? error,
    TResult Function(ActivatePromocodeViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ActivatePromocodeState {
  const factory _Error({required final DomainException exception}) =
      _$ErrorImpl;

  DomainException get exception;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActivatePromocodeViewModel viewModel});

  $ActivatePromocodeViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ActivatePromocodeStateCopyWithImpl<$Res, _$LoadedImpl>
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
              as ActivatePromocodeViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ActivatePromocodeViewModelCopyWith<$Res> get viewModel {
    return $ActivatePromocodeViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.viewModel});

  @override
  final ActivatePromocodeViewModel viewModel;

  @override
  String toString() {
    return 'ActivatePromocodeState.loaded(viewModel: $viewModel)';
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
    required TResult Function() loading,
    required TResult Function(DomainException exception) error,
    required TResult Function(ActivatePromocodeViewModel viewModel) loaded,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DomainException exception)? error,
    TResult? Function(ActivatePromocodeViewModel viewModel)? loaded,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DomainException exception)? error,
    TResult Function(ActivatePromocodeViewModel viewModel)? loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ActivatePromocodeState {
  const factory _Loaded({required final ActivatePromocodeViewModel viewModel}) =
      _$LoadedImpl;

  ActivatePromocodeViewModel get viewModel;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActivatePromocodeViewModel {
  PromocodeResponse? get promocodeResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivatePromocodeViewModelCopyWith<ActivatePromocodeViewModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivatePromocodeViewModelCopyWith<$Res> {
  factory $ActivatePromocodeViewModelCopyWith(ActivatePromocodeViewModel value,
          $Res Function(ActivatePromocodeViewModel) then) =
      _$ActivatePromocodeViewModelCopyWithImpl<$Res,
          ActivatePromocodeViewModel>;
  @useResult
  $Res call({PromocodeResponse? promocodeResponse});

  $PromocodeResponseCopyWith<$Res>? get promocodeResponse;
}

/// @nodoc
class _$ActivatePromocodeViewModelCopyWithImpl<$Res,
        $Val extends ActivatePromocodeViewModel>
    implements $ActivatePromocodeViewModelCopyWith<$Res> {
  _$ActivatePromocodeViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocodeResponse = freezed,
  }) {
    return _then(_value.copyWith(
      promocodeResponse: freezed == promocodeResponse
          ? _value.promocodeResponse
          : promocodeResponse // ignore: cast_nullable_to_non_nullable
              as PromocodeResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PromocodeResponseCopyWith<$Res>? get promocodeResponse {
    if (_value.promocodeResponse == null) {
      return null;
    }

    return $PromocodeResponseCopyWith<$Res>(_value.promocodeResponse!, (value) {
      return _then(_value.copyWith(promocodeResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivatePromocodeViewModelImplCopyWith<$Res>
    implements $ActivatePromocodeViewModelCopyWith<$Res> {
  factory _$$ActivatePromocodeViewModelImplCopyWith(
          _$ActivatePromocodeViewModelImpl value,
          $Res Function(_$ActivatePromocodeViewModelImpl) then) =
      __$$ActivatePromocodeViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PromocodeResponse? promocodeResponse});

  @override
  $PromocodeResponseCopyWith<$Res>? get promocodeResponse;
}

/// @nodoc
class __$$ActivatePromocodeViewModelImplCopyWithImpl<$Res>
    extends _$ActivatePromocodeViewModelCopyWithImpl<$Res,
        _$ActivatePromocodeViewModelImpl>
    implements _$$ActivatePromocodeViewModelImplCopyWith<$Res> {
  __$$ActivatePromocodeViewModelImplCopyWithImpl(
      _$ActivatePromocodeViewModelImpl _value,
      $Res Function(_$ActivatePromocodeViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocodeResponse = freezed,
  }) {
    return _then(_$ActivatePromocodeViewModelImpl(
      promocodeResponse: freezed == promocodeResponse
          ? _value.promocodeResponse
          : promocodeResponse // ignore: cast_nullable_to_non_nullable
              as PromocodeResponse?,
    ));
  }
}

/// @nodoc

class _$ActivatePromocodeViewModelImpl implements _ActivatePromocodeViewModel {
  _$ActivatePromocodeViewModelImpl({this.promocodeResponse});

  @override
  final PromocodeResponse? promocodeResponse;

  @override
  String toString() {
    return 'ActivatePromocodeViewModel(promocodeResponse: $promocodeResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivatePromocodeViewModelImpl &&
            (identical(other.promocodeResponse, promocodeResponse) ||
                other.promocodeResponse == promocodeResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promocodeResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivatePromocodeViewModelImplCopyWith<_$ActivatePromocodeViewModelImpl>
      get copyWith => __$$ActivatePromocodeViewModelImplCopyWithImpl<
          _$ActivatePromocodeViewModelImpl>(this, _$identity);
}

abstract class _ActivatePromocodeViewModel
    implements ActivatePromocodeViewModel {
  factory _ActivatePromocodeViewModel(
          {final PromocodeResponse? promocodeResponse}) =
      _$ActivatePromocodeViewModelImpl;

  @override
  PromocodeResponse? get promocodeResponse;
  @override
  @JsonKey(ignore: true)
  _$$ActivatePromocodeViewModelImplCopyWith<_$ActivatePromocodeViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
