// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_fcm_token_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateFcmTokenRequest _$UpdateFcmTokenRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateFcmTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateFcmTokenRequest {
  @JsonKey(name: 'fcm_token')
  String get fcmToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateFcmTokenRequestCopyWith<UpdateFcmTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFcmTokenRequestCopyWith<$Res> {
  factory $UpdateFcmTokenRequestCopyWith(UpdateFcmTokenRequest value,
          $Res Function(UpdateFcmTokenRequest) then) =
      _$UpdateFcmTokenRequestCopyWithImpl<$Res, UpdateFcmTokenRequest>;
  @useResult
  $Res call({@JsonKey(name: 'fcm_token') String fcmToken});
}

/// @nodoc
class _$UpdateFcmTokenRequestCopyWithImpl<$Res,
        $Val extends UpdateFcmTokenRequest>
    implements $UpdateFcmTokenRequestCopyWith<$Res> {
  _$UpdateFcmTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
  }) {
    return _then(_value.copyWith(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateFcmTokenRequestImplCopyWith<$Res>
    implements $UpdateFcmTokenRequestCopyWith<$Res> {
  factory _$$UpdateFcmTokenRequestImplCopyWith(
          _$UpdateFcmTokenRequestImpl value,
          $Res Function(_$UpdateFcmTokenRequestImpl) then) =
      __$$UpdateFcmTokenRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'fcm_token') String fcmToken});
}

/// @nodoc
class __$$UpdateFcmTokenRequestImplCopyWithImpl<$Res>
    extends _$UpdateFcmTokenRequestCopyWithImpl<$Res,
        _$UpdateFcmTokenRequestImpl>
    implements _$$UpdateFcmTokenRequestImplCopyWith<$Res> {
  __$$UpdateFcmTokenRequestImplCopyWithImpl(_$UpdateFcmTokenRequestImpl _value,
      $Res Function(_$UpdateFcmTokenRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
  }) {
    return _then(_$UpdateFcmTokenRequestImpl(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateFcmTokenRequestImpl implements _UpdateFcmTokenRequest {
  const _$UpdateFcmTokenRequestImpl(
      {@JsonKey(name: 'fcm_token') required this.fcmToken});

  factory _$UpdateFcmTokenRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateFcmTokenRequestImplFromJson(json);

  @override
  @JsonKey(name: 'fcm_token')
  final String fcmToken;

  @override
  String toString() {
    return 'UpdateFcmTokenRequest(fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFcmTokenRequestImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFcmTokenRequestImplCopyWith<_$UpdateFcmTokenRequestImpl>
      get copyWith => __$$UpdateFcmTokenRequestImplCopyWithImpl<
          _$UpdateFcmTokenRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFcmTokenRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateFcmTokenRequest implements UpdateFcmTokenRequest {
  const factory _UpdateFcmTokenRequest(
          {@JsonKey(name: 'fcm_token') required final String fcmToken}) =
      _$UpdateFcmTokenRequestImpl;

  factory _UpdateFcmTokenRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateFcmTokenRequestImpl.fromJson;

  @override
  @JsonKey(name: 'fcm_token')
  String get fcmToken;
  @override
  @JsonKey(ignore: true)
  _$$UpdateFcmTokenRequestImplCopyWith<_$UpdateFcmTokenRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
