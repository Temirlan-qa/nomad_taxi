// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieve,
    required TResult Function(UpdateLanguageRequest request) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retrieve,
    TResult? Function(UpdateLanguageRequest request)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieve,
    TResult Function(UpdateLanguageRequest request)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveSettingsEvent value) retrieve,
    required TResult Function(_UpdateSettingsEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RetrieveSettingsEvent value)? retrieve,
    TResult? Function(_UpdateSettingsEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveSettingsEvent value)? retrieve,
    TResult Function(_UpdateSettingsEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RetrieveSettingsEventImplCopyWith<$Res> {
  factory _$$RetrieveSettingsEventImplCopyWith(
          _$RetrieveSettingsEventImpl value,
          $Res Function(_$RetrieveSettingsEventImpl) then) =
      __$$RetrieveSettingsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetrieveSettingsEventImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$RetrieveSettingsEventImpl>
    implements _$$RetrieveSettingsEventImplCopyWith<$Res> {
  __$$RetrieveSettingsEventImplCopyWithImpl(_$RetrieveSettingsEventImpl _value,
      $Res Function(_$RetrieveSettingsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RetrieveSettingsEventImpl implements _RetrieveSettingsEvent {
  const _$RetrieveSettingsEventImpl();

  @override
  String toString() {
    return 'SettingsEvent.retrieve()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrieveSettingsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieve,
    required TResult Function(UpdateLanguageRequest request) update,
  }) {
    return retrieve();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retrieve,
    TResult? Function(UpdateLanguageRequest request)? update,
  }) {
    return retrieve?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieve,
    TResult Function(UpdateLanguageRequest request)? update,
    required TResult orElse(),
  }) {
    if (retrieve != null) {
      return retrieve();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveSettingsEvent value) retrieve,
    required TResult Function(_UpdateSettingsEvent value) update,
  }) {
    return retrieve(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RetrieveSettingsEvent value)? retrieve,
    TResult? Function(_UpdateSettingsEvent value)? update,
  }) {
    return retrieve?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveSettingsEvent value)? retrieve,
    TResult Function(_UpdateSettingsEvent value)? update,
    required TResult orElse(),
  }) {
    if (retrieve != null) {
      return retrieve(this);
    }
    return orElse();
  }
}

abstract class _RetrieveSettingsEvent implements SettingsEvent {
  const factory _RetrieveSettingsEvent() = _$RetrieveSettingsEventImpl;
}

/// @nodoc
abstract class _$$UpdateSettingsEventImplCopyWith<$Res> {
  factory _$$UpdateSettingsEventImplCopyWith(_$UpdateSettingsEventImpl value,
          $Res Function(_$UpdateSettingsEventImpl) then) =
      __$$UpdateSettingsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateLanguageRequest request});

  $UpdateLanguageRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$UpdateSettingsEventImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$UpdateSettingsEventImpl>
    implements _$$UpdateSettingsEventImplCopyWith<$Res> {
  __$$UpdateSettingsEventImplCopyWithImpl(_$UpdateSettingsEventImpl _value,
      $Res Function(_$UpdateSettingsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$UpdateSettingsEventImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as UpdateLanguageRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateLanguageRequestCopyWith<$Res> get request {
    return $UpdateLanguageRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$UpdateSettingsEventImpl implements _UpdateSettingsEvent {
  const _$UpdateSettingsEventImpl({required this.request});

  @override
  final UpdateLanguageRequest request;

  @override
  String toString() {
    return 'SettingsEvent.update(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSettingsEventImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSettingsEventImplCopyWith<_$UpdateSettingsEventImpl> get copyWith =>
      __$$UpdateSettingsEventImplCopyWithImpl<_$UpdateSettingsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieve,
    required TResult Function(UpdateLanguageRequest request) update,
  }) {
    return update(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retrieve,
    TResult? Function(UpdateLanguageRequest request)? update,
  }) {
    return update?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieve,
    TResult Function(UpdateLanguageRequest request)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveSettingsEvent value) retrieve,
    required TResult Function(_UpdateSettingsEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RetrieveSettingsEvent value)? retrieve,
    TResult? Function(_UpdateSettingsEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveSettingsEvent value)? retrieve,
    TResult Function(_UpdateSettingsEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateSettingsEvent implements SettingsEvent {
  const factory _UpdateSettingsEvent(
          {required final UpdateLanguageRequest request}) =
      _$UpdateSettingsEventImpl;

  UpdateLanguageRequest get request;
  @JsonKey(ignore: true)
  _$$UpdateSettingsEventImplCopyWith<_$UpdateSettingsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(String languageCode) done,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(String languageCode)? done,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(String languageCode)? done,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptySettingsState value) empty,
    required TResult Function(_InProgressSettingsState value) inProgress,
    required TResult Function(_DoneSettingsState value) done,
    required TResult Function(_ErrorSettingsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptySettingsState value)? empty,
    TResult? Function(_InProgressSettingsState value)? inProgress,
    TResult? Function(_DoneSettingsState value)? done,
    TResult? Function(_ErrorSettingsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptySettingsState value)? empty,
    TResult Function(_InProgressSettingsState value)? inProgress,
    TResult Function(_DoneSettingsState value)? done,
    TResult Function(_ErrorSettingsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptySettingsStateImplCopyWith<$Res> {
  factory _$$EmptySettingsStateImplCopyWith(_$EmptySettingsStateImpl value,
          $Res Function(_$EmptySettingsStateImpl) then) =
      __$$EmptySettingsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptySettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$EmptySettingsStateImpl>
    implements _$$EmptySettingsStateImplCopyWith<$Res> {
  __$$EmptySettingsStateImplCopyWithImpl(_$EmptySettingsStateImpl _value,
      $Res Function(_$EmptySettingsStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptySettingsStateImpl implements _EmptySettingsState {
  const _$EmptySettingsStateImpl();

  @override
  String toString() {
    return 'SettingsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptySettingsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(String languageCode) done,
    required TResult Function(String errorMessage) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(String languageCode)? done,
    TResult? Function(String errorMessage)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(String languageCode)? done,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptySettingsState value) empty,
    required TResult Function(_InProgressSettingsState value) inProgress,
    required TResult Function(_DoneSettingsState value) done,
    required TResult Function(_ErrorSettingsState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptySettingsState value)? empty,
    TResult? Function(_InProgressSettingsState value)? inProgress,
    TResult? Function(_DoneSettingsState value)? done,
    TResult? Function(_ErrorSettingsState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptySettingsState value)? empty,
    TResult Function(_InProgressSettingsState value)? inProgress,
    TResult Function(_DoneSettingsState value)? done,
    TResult Function(_ErrorSettingsState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptySettingsState implements SettingsState {
  const factory _EmptySettingsState() = _$EmptySettingsStateImpl;
}

/// @nodoc
abstract class _$$InProgressSettingsStateImplCopyWith<$Res> {
  factory _$$InProgressSettingsStateImplCopyWith(
          _$InProgressSettingsStateImpl value,
          $Res Function(_$InProgressSettingsStateImpl) then) =
      __$$InProgressSettingsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressSettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$InProgressSettingsStateImpl>
    implements _$$InProgressSettingsStateImplCopyWith<$Res> {
  __$$InProgressSettingsStateImplCopyWithImpl(
      _$InProgressSettingsStateImpl _value,
      $Res Function(_$InProgressSettingsStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProgressSettingsStateImpl implements _InProgressSettingsState {
  const _$InProgressSettingsStateImpl();

  @override
  String toString() {
    return 'SettingsState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressSettingsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(String languageCode) done,
    required TResult Function(String errorMessage) error,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(String languageCode)? done,
    TResult? Function(String errorMessage)? error,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(String languageCode)? done,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptySettingsState value) empty,
    required TResult Function(_InProgressSettingsState value) inProgress,
    required TResult Function(_DoneSettingsState value) done,
    required TResult Function(_ErrorSettingsState value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptySettingsState value)? empty,
    TResult? Function(_InProgressSettingsState value)? inProgress,
    TResult? Function(_DoneSettingsState value)? done,
    TResult? Function(_ErrorSettingsState value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptySettingsState value)? empty,
    TResult Function(_InProgressSettingsState value)? inProgress,
    TResult Function(_DoneSettingsState value)? done,
    TResult Function(_ErrorSettingsState value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressSettingsState implements SettingsState {
  const factory _InProgressSettingsState() = _$InProgressSettingsStateImpl;
}

/// @nodoc
abstract class _$$DoneSettingsStateImplCopyWith<$Res> {
  factory _$$DoneSettingsStateImplCopyWith(_$DoneSettingsStateImpl value,
          $Res Function(_$DoneSettingsStateImpl) then) =
      __$$DoneSettingsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String languageCode});
}

/// @nodoc
class __$$DoneSettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$DoneSettingsStateImpl>
    implements _$$DoneSettingsStateImplCopyWith<$Res> {
  __$$DoneSettingsStateImplCopyWithImpl(_$DoneSettingsStateImpl _value,
      $Res Function(_$DoneSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_$DoneSettingsStateImpl(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DoneSettingsStateImpl implements _DoneSettingsState {
  const _$DoneSettingsStateImpl({required this.languageCode});

  @override
  final String languageCode;

  @override
  String toString() {
    return 'SettingsState.done(languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneSettingsStateImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneSettingsStateImplCopyWith<_$DoneSettingsStateImpl> get copyWith =>
      __$$DoneSettingsStateImplCopyWithImpl<_$DoneSettingsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(String languageCode) done,
    required TResult Function(String errorMessage) error,
  }) {
    return done(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(String languageCode)? done,
    TResult? Function(String errorMessage)? error,
  }) {
    return done?.call(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(String languageCode)? done,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(languageCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptySettingsState value) empty,
    required TResult Function(_InProgressSettingsState value) inProgress,
    required TResult Function(_DoneSettingsState value) done,
    required TResult Function(_ErrorSettingsState value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptySettingsState value)? empty,
    TResult? Function(_InProgressSettingsState value)? inProgress,
    TResult? Function(_DoneSettingsState value)? done,
    TResult? Function(_ErrorSettingsState value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptySettingsState value)? empty,
    TResult Function(_InProgressSettingsState value)? inProgress,
    TResult Function(_DoneSettingsState value)? done,
    TResult Function(_ErrorSettingsState value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _DoneSettingsState implements SettingsState {
  const factory _DoneSettingsState({required final String languageCode}) =
      _$DoneSettingsStateImpl;

  String get languageCode;
  @JsonKey(ignore: true)
  _$$DoneSettingsStateImplCopyWith<_$DoneSettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorSettingsStateImplCopyWith<$Res> {
  factory _$$ErrorSettingsStateImplCopyWith(_$ErrorSettingsStateImpl value,
          $Res Function(_$ErrorSettingsStateImpl) then) =
      __$$ErrorSettingsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorSettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$ErrorSettingsStateImpl>
    implements _$$ErrorSettingsStateImplCopyWith<$Res> {
  __$$ErrorSettingsStateImplCopyWithImpl(_$ErrorSettingsStateImpl _value,
      $Res Function(_$ErrorSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorSettingsStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorSettingsStateImpl implements _ErrorSettingsState {
  const _$ErrorSettingsStateImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'SettingsState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSettingsStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSettingsStateImplCopyWith<_$ErrorSettingsStateImpl> get copyWith =>
      __$$ErrorSettingsStateImplCopyWithImpl<_$ErrorSettingsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(String languageCode) done,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(String languageCode)? done,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(String languageCode)? done,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptySettingsState value) empty,
    required TResult Function(_InProgressSettingsState value) inProgress,
    required TResult Function(_DoneSettingsState value) done,
    required TResult Function(_ErrorSettingsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptySettingsState value)? empty,
    TResult? Function(_InProgressSettingsState value)? inProgress,
    TResult? Function(_DoneSettingsState value)? done,
    TResult? Function(_ErrorSettingsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptySettingsState value)? empty,
    TResult Function(_InProgressSettingsState value)? inProgress,
    TResult Function(_DoneSettingsState value)? done,
    TResult Function(_ErrorSettingsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSettingsState implements SettingsState {
  const factory _ErrorSettingsState({required final String errorMessage}) =
      _$ErrorSettingsStateImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorSettingsStateImplCopyWith<_$ErrorSettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
