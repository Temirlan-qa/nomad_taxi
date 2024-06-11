// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logOut,
    required TResult Function() deleteAccount,
    required TResult Function(String name, String lastName) updateUserInfo,
    required TResult Function(UpdateFcmTokenRequest fcmToken) updateFcmToken,
    required TResult Function(UpdateLanguageRequest language) updateLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logOut,
    TResult? Function()? deleteAccount,
    TResult? Function(String name, String lastName)? updateUserInfo,
    TResult? Function(UpdateFcmTokenRequest fcmToken)? updateFcmToken,
    TResult? Function(UpdateLanguageRequest language)? updateLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOut,
    TResult Function()? deleteAccount,
    TResult Function(String name, String lastName)? updateUserInfo,
    TResult Function(UpdateFcmTokenRequest fcmToken)? updateFcmToken,
    TResult Function(UpdateLanguageRequest language)? updateLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_UpdateFcmToken value) updateFcmToken,
    required TResult Function(_UpdateLanguage value) updateLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_DeleteAccount value)? deleteAccount,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_UpdateFcmToken value)? updateFcmToken,
    TResult? Function(_UpdateLanguage value)? updateLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_UpdateFcmToken value)? updateFcmToken,
    TResult Function(_UpdateLanguage value)? updateLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

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
    extends _$ProfileEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'ProfileEvent.init()';
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
    required TResult Function() logOut,
    required TResult Function() deleteAccount,
    required TResult Function(String name, String lastName) updateUserInfo,
    required TResult Function(UpdateFcmTokenRequest fcmToken) updateFcmToken,
    required TResult Function(UpdateLanguageRequest language) updateLanguage,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logOut,
    TResult? Function()? deleteAccount,
    TResult? Function(String name, String lastName)? updateUserInfo,
    TResult? Function(UpdateFcmTokenRequest fcmToken)? updateFcmToken,
    TResult? Function(UpdateLanguageRequest language)? updateLanguage,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOut,
    TResult Function()? deleteAccount,
    TResult Function(String name, String lastName)? updateUserInfo,
    TResult Function(UpdateFcmTokenRequest fcmToken)? updateFcmToken,
    TResult Function(UpdateLanguageRequest language)? updateLanguage,
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
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_UpdateFcmToken value) updateFcmToken,
    required TResult Function(_UpdateLanguage value) updateLanguage,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_DeleteAccount value)? deleteAccount,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_UpdateFcmToken value)? updateFcmToken,
    TResult? Function(_UpdateLanguage value)? updateLanguage,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_UpdateFcmToken value)? updateFcmToken,
    TResult Function(_UpdateLanguage value)? updateLanguage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ProfileEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements _LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'ProfileEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logOut,
    required TResult Function() deleteAccount,
    required TResult Function(String name, String lastName) updateUserInfo,
    required TResult Function(UpdateFcmTokenRequest fcmToken) updateFcmToken,
    required TResult Function(UpdateLanguageRequest language) updateLanguage,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logOut,
    TResult? Function()? deleteAccount,
    TResult? Function(String name, String lastName)? updateUserInfo,
    TResult? Function(UpdateFcmTokenRequest fcmToken)? updateFcmToken,
    TResult? Function(UpdateLanguageRequest language)? updateLanguage,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOut,
    TResult Function()? deleteAccount,
    TResult Function(String name, String lastName)? updateUserInfo,
    TResult Function(UpdateFcmTokenRequest fcmToken)? updateFcmToken,
    TResult Function(UpdateLanguageRequest language)? updateLanguage,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_UpdateFcmToken value) updateFcmToken,
    required TResult Function(_UpdateLanguage value) updateLanguage,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_DeleteAccount value)? deleteAccount,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_UpdateFcmToken value)? updateFcmToken,
    TResult? Function(_UpdateLanguage value)? updateLanguage,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_UpdateFcmToken value)? updateFcmToken,
    TResult Function(_UpdateLanguage value)? updateLanguage,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements ProfileEvent {
  const factory _LogOut() = _$LogOutImpl;
}

/// @nodoc
abstract class _$$DeleteAccountImplCopyWith<$Res> {
  factory _$$DeleteAccountImplCopyWith(
          _$DeleteAccountImpl value, $Res Function(_$DeleteAccountImpl) then) =
      __$$DeleteAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAccountImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$DeleteAccountImpl>
    implements _$$DeleteAccountImplCopyWith<$Res> {
  __$$DeleteAccountImplCopyWithImpl(
      _$DeleteAccountImpl _value, $Res Function(_$DeleteAccountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAccountImpl implements _DeleteAccount {
  const _$DeleteAccountImpl();

  @override
  String toString() {
    return 'ProfileEvent.deleteAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logOut,
    required TResult Function() deleteAccount,
    required TResult Function(String name, String lastName) updateUserInfo,
    required TResult Function(UpdateFcmTokenRequest fcmToken) updateFcmToken,
    required TResult Function(UpdateLanguageRequest language) updateLanguage,
  }) {
    return deleteAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logOut,
    TResult? Function()? deleteAccount,
    TResult? Function(String name, String lastName)? updateUserInfo,
    TResult? Function(UpdateFcmTokenRequest fcmToken)? updateFcmToken,
    TResult? Function(UpdateLanguageRequest language)? updateLanguage,
  }) {
    return deleteAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOut,
    TResult Function()? deleteAccount,
    TResult Function(String name, String lastName)? updateUserInfo,
    TResult Function(UpdateFcmTokenRequest fcmToken)? updateFcmToken,
    TResult Function(UpdateLanguageRequest language)? updateLanguage,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_UpdateFcmToken value) updateFcmToken,
    required TResult Function(_UpdateLanguage value) updateLanguage,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_DeleteAccount value)? deleteAccount,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_UpdateFcmToken value)? updateFcmToken,
    TResult? Function(_UpdateLanguage value)? updateLanguage,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_UpdateFcmToken value)? updateFcmToken,
    TResult Function(_UpdateLanguage value)? updateLanguage,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccount implements ProfileEvent {
  const factory _DeleteAccount() = _$DeleteAccountImpl;
}

/// @nodoc
abstract class _$$UpdateUserInfoImplCopyWith<$Res> {
  factory _$$UpdateUserInfoImplCopyWith(_$UpdateUserInfoImpl value,
          $Res Function(_$UpdateUserInfoImpl) then) =
      __$$UpdateUserInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String lastName});
}

/// @nodoc
class __$$UpdateUserInfoImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateUserInfoImpl>
    implements _$$UpdateUserInfoImplCopyWith<$Res> {
  __$$UpdateUserInfoImplCopyWithImpl(
      _$UpdateUserInfoImpl _value, $Res Function(_$UpdateUserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lastName = null,
  }) {
    return _then(_$UpdateUserInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUserInfoImpl implements _UpdateUserInfo {
  const _$UpdateUserInfoImpl({required this.name, required this.lastName});

  @override
  final String name;
  @override
  final String lastName;

  @override
  String toString() {
    return 'ProfileEvent.updateUserInfo(name: $name, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserInfoImplCopyWith<_$UpdateUserInfoImpl> get copyWith =>
      __$$UpdateUserInfoImplCopyWithImpl<_$UpdateUserInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logOut,
    required TResult Function() deleteAccount,
    required TResult Function(String name, String lastName) updateUserInfo,
    required TResult Function(UpdateFcmTokenRequest fcmToken) updateFcmToken,
    required TResult Function(UpdateLanguageRequest language) updateLanguage,
  }) {
    return updateUserInfo(name, lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logOut,
    TResult? Function()? deleteAccount,
    TResult? Function(String name, String lastName)? updateUserInfo,
    TResult? Function(UpdateFcmTokenRequest fcmToken)? updateFcmToken,
    TResult? Function(UpdateLanguageRequest language)? updateLanguage,
  }) {
    return updateUserInfo?.call(name, lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOut,
    TResult Function()? deleteAccount,
    TResult Function(String name, String lastName)? updateUserInfo,
    TResult Function(UpdateFcmTokenRequest fcmToken)? updateFcmToken,
    TResult Function(UpdateLanguageRequest language)? updateLanguage,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(name, lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_UpdateFcmToken value) updateFcmToken,
    required TResult Function(_UpdateLanguage value) updateLanguage,
  }) {
    return updateUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_DeleteAccount value)? deleteAccount,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_UpdateFcmToken value)? updateFcmToken,
    TResult? Function(_UpdateLanguage value)? updateLanguage,
  }) {
    return updateUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_UpdateFcmToken value)? updateFcmToken,
    TResult Function(_UpdateLanguage value)? updateLanguage,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserInfo implements ProfileEvent {
  const factory _UpdateUserInfo(
      {required final String name,
      required final String lastName}) = _$UpdateUserInfoImpl;

  String get name;
  String get lastName;
  @JsonKey(ignore: true)
  _$$UpdateUserInfoImplCopyWith<_$UpdateUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFcmTokenImplCopyWith<$Res> {
  factory _$$UpdateFcmTokenImplCopyWith(_$UpdateFcmTokenImpl value,
          $Res Function(_$UpdateFcmTokenImpl) then) =
      __$$UpdateFcmTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateFcmTokenRequest fcmToken});

  $UpdateFcmTokenRequestCopyWith<$Res> get fcmToken;
}

/// @nodoc
class __$$UpdateFcmTokenImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateFcmTokenImpl>
    implements _$$UpdateFcmTokenImplCopyWith<$Res> {
  __$$UpdateFcmTokenImplCopyWithImpl(
      _$UpdateFcmTokenImpl _value, $Res Function(_$UpdateFcmTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
  }) {
    return _then(_$UpdateFcmTokenImpl(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as UpdateFcmTokenRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateFcmTokenRequestCopyWith<$Res> get fcmToken {
    return $UpdateFcmTokenRequestCopyWith<$Res>(_value.fcmToken, (value) {
      return _then(_value.copyWith(fcmToken: value));
    });
  }
}

/// @nodoc

class _$UpdateFcmTokenImpl implements _UpdateFcmToken {
  const _$UpdateFcmTokenImpl({required this.fcmToken});

  @override
  final UpdateFcmTokenRequest fcmToken;

  @override
  String toString() {
    return 'ProfileEvent.updateFcmToken(fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFcmTokenImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fcmToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFcmTokenImplCopyWith<_$UpdateFcmTokenImpl> get copyWith =>
      __$$UpdateFcmTokenImplCopyWithImpl<_$UpdateFcmTokenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logOut,
    required TResult Function() deleteAccount,
    required TResult Function(String name, String lastName) updateUserInfo,
    required TResult Function(UpdateFcmTokenRequest fcmToken) updateFcmToken,
    required TResult Function(UpdateLanguageRequest language) updateLanguage,
  }) {
    return updateFcmToken(fcmToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logOut,
    TResult? Function()? deleteAccount,
    TResult? Function(String name, String lastName)? updateUserInfo,
    TResult? Function(UpdateFcmTokenRequest fcmToken)? updateFcmToken,
    TResult? Function(UpdateLanguageRequest language)? updateLanguage,
  }) {
    return updateFcmToken?.call(fcmToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOut,
    TResult Function()? deleteAccount,
    TResult Function(String name, String lastName)? updateUserInfo,
    TResult Function(UpdateFcmTokenRequest fcmToken)? updateFcmToken,
    TResult Function(UpdateLanguageRequest language)? updateLanguage,
    required TResult orElse(),
  }) {
    if (updateFcmToken != null) {
      return updateFcmToken(fcmToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_UpdateFcmToken value) updateFcmToken,
    required TResult Function(_UpdateLanguage value) updateLanguage,
  }) {
    return updateFcmToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_DeleteAccount value)? deleteAccount,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_UpdateFcmToken value)? updateFcmToken,
    TResult? Function(_UpdateLanguage value)? updateLanguage,
  }) {
    return updateFcmToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_UpdateFcmToken value)? updateFcmToken,
    TResult Function(_UpdateLanguage value)? updateLanguage,
    required TResult orElse(),
  }) {
    if (updateFcmToken != null) {
      return updateFcmToken(this);
    }
    return orElse();
  }
}

abstract class _UpdateFcmToken implements ProfileEvent {
  const factory _UpdateFcmToken(
      {required final UpdateFcmTokenRequest fcmToken}) = _$UpdateFcmTokenImpl;

  UpdateFcmTokenRequest get fcmToken;
  @JsonKey(ignore: true)
  _$$UpdateFcmTokenImplCopyWith<_$UpdateFcmTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLanguageImplCopyWith<$Res> {
  factory _$$UpdateLanguageImplCopyWith(_$UpdateLanguageImpl value,
          $Res Function(_$UpdateLanguageImpl) then) =
      __$$UpdateLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateLanguageRequest language});

  $UpdateLanguageRequestCopyWith<$Res> get language;
}

/// @nodoc
class __$$UpdateLanguageImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateLanguageImpl>
    implements _$$UpdateLanguageImplCopyWith<$Res> {
  __$$UpdateLanguageImplCopyWithImpl(
      _$UpdateLanguageImpl _value, $Res Function(_$UpdateLanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_$UpdateLanguageImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as UpdateLanguageRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateLanguageRequestCopyWith<$Res> get language {
    return $UpdateLanguageRequestCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value));
    });
  }
}

/// @nodoc

class _$UpdateLanguageImpl implements _UpdateLanguage {
  const _$UpdateLanguageImpl({required this.language});

  @override
  final UpdateLanguageRequest language;

  @override
  String toString() {
    return 'ProfileEvent.updateLanguage(language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLanguageImpl &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLanguageImplCopyWith<_$UpdateLanguageImpl> get copyWith =>
      __$$UpdateLanguageImplCopyWithImpl<_$UpdateLanguageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logOut,
    required TResult Function() deleteAccount,
    required TResult Function(String name, String lastName) updateUserInfo,
    required TResult Function(UpdateFcmTokenRequest fcmToken) updateFcmToken,
    required TResult Function(UpdateLanguageRequest language) updateLanguage,
  }) {
    return updateLanguage(language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logOut,
    TResult? Function()? deleteAccount,
    TResult? Function(String name, String lastName)? updateUserInfo,
    TResult? Function(UpdateFcmTokenRequest fcmToken)? updateFcmToken,
    TResult? Function(UpdateLanguageRequest language)? updateLanguage,
  }) {
    return updateLanguage?.call(language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOut,
    TResult Function()? deleteAccount,
    TResult Function(String name, String lastName)? updateUserInfo,
    TResult Function(UpdateFcmTokenRequest fcmToken)? updateFcmToken,
    TResult Function(UpdateLanguageRequest language)? updateLanguage,
    required TResult orElse(),
  }) {
    if (updateLanguage != null) {
      return updateLanguage(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_UpdateFcmToken value) updateFcmToken,
    required TResult Function(_UpdateLanguage value) updateLanguage,
  }) {
    return updateLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_DeleteAccount value)? deleteAccount,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_UpdateFcmToken value)? updateFcmToken,
    TResult? Function(_UpdateLanguage value)? updateLanguage,
  }) {
    return updateLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_UpdateFcmToken value)? updateFcmToken,
    TResult Function(_UpdateLanguage value)? updateLanguage,
    required TResult orElse(),
  }) {
    if (updateLanguage != null) {
      return updateLanguage(this);
    }
    return orElse();
  }
}

abstract class _UpdateLanguage implements ProfileEvent {
  const factory _UpdateLanguage(
      {required final UpdateLanguageRequest language}) = _$UpdateLanguageImpl;

  UpdateLanguageRequest get language;
  @JsonKey(ignore: true)
  _$$UpdateLanguageImplCopyWith<_$UpdateLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProfileViewModel viewModel) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ProfileViewModel viewModel)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProfileViewModel viewModel)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ProfileState.initial()';
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
    required TResult Function(ProfileViewModel viewModel) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ProfileViewModel viewModel)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProfileViewModel viewModel)? loaded,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileViewModel viewModel});

  $ProfileViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadedImpl>
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
              as ProfileViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileViewModelCopyWith<$Res> get viewModel {
    return $ProfileViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.viewModel});

  @override
  final ProfileViewModel viewModel;

  @override
  String toString() {
    return 'ProfileState.loaded(viewModel: $viewModel)';
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
    required TResult Function(ProfileViewModel viewModel) loaded,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ProfileViewModel viewModel)? loaded,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProfileViewModel viewModel)? loaded,
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
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ProfileState {
  const factory _Loaded({required final ProfileViewModel viewModel}) =
      _$LoadedImpl;

  ProfileViewModel get viewModel;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileViewModel {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError; // optional
  int get id => throw _privateConstructorUsedError;
  int get isBlocked => throw _privateConstructorUsedError;
  int get bonus => throw _privateConstructorUsedError;
  Partner get partner => throw _privateConstructorUsedError;
  String get fcmToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileViewModelCopyWith<ProfileViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileViewModelCopyWith<$Res> {
  factory $ProfileViewModelCopyWith(
          ProfileViewModel value, $Res Function(ProfileViewModel) then) =
      _$ProfileViewModelCopyWithImpl<$Res, ProfileViewModel>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String phone,
      int id,
      int isBlocked,
      int bonus,
      Partner partner,
      String fcmToken});

  $PartnerCopyWith<$Res> get partner;
}

/// @nodoc
class _$ProfileViewModelCopyWithImpl<$Res, $Val extends ProfileViewModel>
    implements $ProfileViewModelCopyWith<$Res> {
  _$ProfileViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? id = null,
    Object? isBlocked = null,
    Object? bonus = null,
    Object? partner = null,
    Object? fcmToken = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as int,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
      partner: null == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as Partner,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PartnerCopyWith<$Res> get partner {
    return $PartnerCopyWith<$Res>(_value.partner, (value) {
      return _then(_value.copyWith(partner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileViewModelImplCopyWith<$Res>
    implements $ProfileViewModelCopyWith<$Res> {
  factory _$$ProfileViewModelImplCopyWith(_$ProfileViewModelImpl value,
          $Res Function(_$ProfileViewModelImpl) then) =
      __$$ProfileViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String phone,
      int id,
      int isBlocked,
      int bonus,
      Partner partner,
      String fcmToken});

  @override
  $PartnerCopyWith<$Res> get partner;
}

/// @nodoc
class __$$ProfileViewModelImplCopyWithImpl<$Res>
    extends _$ProfileViewModelCopyWithImpl<$Res, _$ProfileViewModelImpl>
    implements _$$ProfileViewModelImplCopyWith<$Res> {
  __$$ProfileViewModelImplCopyWithImpl(_$ProfileViewModelImpl _value,
      $Res Function(_$ProfileViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? id = null,
    Object? isBlocked = null,
    Object? bonus = null,
    Object? partner = null,
    Object? fcmToken = null,
  }) {
    return _then(_$ProfileViewModelImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as int,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
      partner: null == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as Partner,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileViewModelImpl implements _ProfileViewModel {
  _$ProfileViewModelImpl(
      {this.firstName = '',
      this.lastName = '',
      this.phone = '',
      this.id = 0,
      this.isBlocked = 0,
      this.bonus = 0,
      this.partner = const Partner.empty(),
      this.fcmToken = ''});

  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String phone;
// optional
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int isBlocked;
  @override
  @JsonKey()
  final int bonus;
  @override
  @JsonKey()
  final Partner partner;
  @override
  @JsonKey()
  final String fcmToken;

  @override
  String toString() {
    return 'ProfileViewModel(firstName: $firstName, lastName: $lastName, phone: $phone, id: $id, isBlocked: $isBlocked, bonus: $bonus, partner: $partner, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileViewModelImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.partner, partner) || other.partner == partner) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, phone, id,
      isBlocked, bonus, partner, fcmToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileViewModelImplCopyWith<_$ProfileViewModelImpl> get copyWith =>
      __$$ProfileViewModelImplCopyWithImpl<_$ProfileViewModelImpl>(
          this, _$identity);
}

abstract class _ProfileViewModel implements ProfileViewModel {
  factory _ProfileViewModel(
      {final String firstName,
      final String lastName,
      final String phone,
      final int id,
      final int isBlocked,
      final int bonus,
      final Partner partner,
      final String fcmToken}) = _$ProfileViewModelImpl;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phone;
  @override // optional
  int get id;
  @override
  int get isBlocked;
  @override
  int get bonus;
  @override
  Partner get partner;
  @override
  String get fcmToken;
  @override
  @JsonKey(ignore: true)
  _$$ProfileViewModelImplCopyWith<_$ProfileViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
