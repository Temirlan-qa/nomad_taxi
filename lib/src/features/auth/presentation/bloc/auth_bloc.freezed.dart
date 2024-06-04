// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInRequest signInBody) login,
    required TResult Function(VerifyRequest verifyRequest) verify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInRequest signInBody)? login,
    TResult? Function(VerifyRequest verifyRequest)? verify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInRequest signInBody)? login,
    TResult Function(VerifyRequest verifyRequest)? verify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Verify value) verify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Verify value)? verify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInRequest signInBody});

  $SignInRequestCopyWith<$Res> get signInBody;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInBody = null,
  }) {
    return _then(_$LoginImpl(
      signInBody: null == signInBody
          ? _value.signInBody
          : signInBody // ignore: cast_nullable_to_non_nullable
              as SignInRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInRequestCopyWith<$Res> get signInBody {
    return $SignInRequestCopyWith<$Res>(_value.signInBody, (value) {
      return _then(_value.copyWith(signInBody: value));
    });
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.signInBody});

  @override
  final SignInRequest signInBody;

  @override
  String toString() {
    return 'AuthEvent.login(signInBody: $signInBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.signInBody, signInBody) ||
                other.signInBody == signInBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInRequest signInBody) login,
    required TResult Function(VerifyRequest verifyRequest) verify,
  }) {
    return login(signInBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInRequest signInBody)? login,
    TResult? Function(VerifyRequest verifyRequest)? verify,
  }) {
    return login?.call(signInBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInRequest signInBody)? login,
    TResult Function(VerifyRequest verifyRequest)? verify,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(signInBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Verify value) verify,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Verify value)? verify,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login({required final SignInRequest signInBody}) = _$LoginImpl;

  SignInRequest get signInBody;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyImplCopyWith<$Res> {
  factory _$$VerifyImplCopyWith(
          _$VerifyImpl value, $Res Function(_$VerifyImpl) then) =
      __$$VerifyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VerifyRequest verifyRequest});

  $VerifyRequestCopyWith<$Res> get verifyRequest;
}

/// @nodoc
class __$$VerifyImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyImpl>
    implements _$$VerifyImplCopyWith<$Res> {
  __$$VerifyImplCopyWithImpl(
      _$VerifyImpl _value, $Res Function(_$VerifyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifyRequest = null,
  }) {
    return _then(_$VerifyImpl(
      verifyRequest: null == verifyRequest
          ? _value.verifyRequest
          : verifyRequest // ignore: cast_nullable_to_non_nullable
              as VerifyRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifyRequestCopyWith<$Res> get verifyRequest {
    return $VerifyRequestCopyWith<$Res>(_value.verifyRequest, (value) {
      return _then(_value.copyWith(verifyRequest: value));
    });
  }
}

/// @nodoc

class _$VerifyImpl implements _Verify {
  const _$VerifyImpl({required this.verifyRequest});

  @override
  final VerifyRequest verifyRequest;

  @override
  String toString() {
    return 'AuthEvent.verify(verifyRequest: $verifyRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyImpl &&
            (identical(other.verifyRequest, verifyRequest) ||
                other.verifyRequest == verifyRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verifyRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyImplCopyWith<_$VerifyImpl> get copyWith =>
      __$$VerifyImplCopyWithImpl<_$VerifyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInRequest signInBody) login,
    required TResult Function(VerifyRequest verifyRequest) verify,
  }) {
    return verify(verifyRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInRequest signInBody)? login,
    TResult? Function(VerifyRequest verifyRequest)? verify,
  }) {
    return verify?.call(verifyRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInRequest signInBody)? login,
    TResult Function(VerifyRequest verifyRequest)? verify,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(verifyRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Verify value) verify,
  }) {
    return verify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Verify value)? verify,
  }) {
    return verify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(this);
    }
    return orElse();
  }
}

abstract class _Verify implements AuthEvent {
  const factory _Verify({required final VerifyRequest verifyRequest}) =
      _$VerifyImpl;

  VerifyRequest get verifyRequest;
  @JsonKey(ignore: true)
  _$$VerifyImplCopyWith<_$VerifyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthStateViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthStateViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthStateViewModel viewModel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AuthState.initial()';
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
    required TResult Function(AuthStateViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthStateViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthStateViewModel viewModel)? loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Initial implements AuthState {
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
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AuthState.loading()';
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
    required TResult Function(AuthStateViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthStateViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthStateViewModel viewModel)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStateViewModel viewModel});

  $AuthStateViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadedImpl>
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
              as AuthStateViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthStateViewModelCopyWith<$Res> get viewModel {
    return $AuthStateViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.viewModel});

  @override
  final AuthStateViewModel viewModel;

  @override
  String toString() {
    return 'AuthState.loaded(viewModel: $viewModel)';
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
    required TResult Function(AuthStateViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthStateViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthStateViewModel viewModel)? loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Loaded implements AuthState {
  const factory _Loaded({required final AuthStateViewModel viewModel}) =
      _$LoadedImpl;

  AuthStateViewModel get viewModel;
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
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'AuthState.error(error: $error)';
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
    required TResult Function() loading,
    required TResult Function(AuthStateViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthStateViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthStateViewModel viewModel)? loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Error implements AuthState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthStateViewModel {
  SignInResponse? get loginResponse => throw _privateConstructorUsedError;
  VerifyResponse? get verifyResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateViewModelCopyWith<AuthStateViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateViewModelCopyWith<$Res> {
  factory $AuthStateViewModelCopyWith(
          AuthStateViewModel value, $Res Function(AuthStateViewModel) then) =
      _$AuthStateViewModelCopyWithImpl<$Res, AuthStateViewModel>;
  @useResult
  $Res call({SignInResponse? loginResponse, VerifyResponse? verifyResponse});

  $SignInResponseCopyWith<$Res>? get loginResponse;
  $VerifyResponseCopyWith<$Res>? get verifyResponse;
}

/// @nodoc
class _$AuthStateViewModelCopyWithImpl<$Res, $Val extends AuthStateViewModel>
    implements $AuthStateViewModelCopyWith<$Res> {
  _$AuthStateViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponse = freezed,
    Object? verifyResponse = freezed,
  }) {
    return _then(_value.copyWith(
      loginResponse: freezed == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as SignInResponse?,
      verifyResponse: freezed == verifyResponse
          ? _value.verifyResponse
          : verifyResponse // ignore: cast_nullable_to_non_nullable
              as VerifyResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInResponseCopyWith<$Res>? get loginResponse {
    if (_value.loginResponse == null) {
      return null;
    }

    return $SignInResponseCopyWith<$Res>(_value.loginResponse!, (value) {
      return _then(_value.copyWith(loginResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifyResponseCopyWith<$Res>? get verifyResponse {
    if (_value.verifyResponse == null) {
      return null;
    }

    return $VerifyResponseCopyWith<$Res>(_value.verifyResponse!, (value) {
      return _then(_value.copyWith(verifyResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateViewModelImplCopyWith<$Res>
    implements $AuthStateViewModelCopyWith<$Res> {
  factory _$$AuthStateViewModelImplCopyWith(_$AuthStateViewModelImpl value,
          $Res Function(_$AuthStateViewModelImpl) then) =
      __$$AuthStateViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignInResponse? loginResponse, VerifyResponse? verifyResponse});

  @override
  $SignInResponseCopyWith<$Res>? get loginResponse;
  @override
  $VerifyResponseCopyWith<$Res>? get verifyResponse;
}

/// @nodoc
class __$$AuthStateViewModelImplCopyWithImpl<$Res>
    extends _$AuthStateViewModelCopyWithImpl<$Res, _$AuthStateViewModelImpl>
    implements _$$AuthStateViewModelImplCopyWith<$Res> {
  __$$AuthStateViewModelImplCopyWithImpl(_$AuthStateViewModelImpl _value,
      $Res Function(_$AuthStateViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponse = freezed,
    Object? verifyResponse = freezed,
  }) {
    return _then(_$AuthStateViewModelImpl(
      freezed == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as SignInResponse?,
      freezed == verifyResponse
          ? _value.verifyResponse
          : verifyResponse // ignore: cast_nullable_to_non_nullable
              as VerifyResponse?,
    ));
  }
}

/// @nodoc

class _$AuthStateViewModelImpl implements _AuthStateViewModel {
  _$AuthStateViewModelImpl(this.loginResponse, this.verifyResponse);

  @override
  final SignInResponse? loginResponse;
  @override
  final VerifyResponse? verifyResponse;

  @override
  String toString() {
    return 'AuthStateViewModel(loginResponse: $loginResponse, verifyResponse: $verifyResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateViewModelImpl &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse) &&
            (identical(other.verifyResponse, verifyResponse) ||
                other.verifyResponse == verifyResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginResponse, verifyResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateViewModelImplCopyWith<_$AuthStateViewModelImpl> get copyWith =>
      __$$AuthStateViewModelImplCopyWithImpl<_$AuthStateViewModelImpl>(
          this, _$identity);
}

abstract class _AuthStateViewModel implements AuthStateViewModel {
  factory _AuthStateViewModel(final SignInResponse? loginResponse,
      final VerifyResponse? verifyResponse) = _$AuthStateViewModelImpl;

  @override
  SignInResponse? get loginResponse;
  @override
  VerifyResponse? get verifyResponse;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateViewModelImplCopyWith<_$AuthStateViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
