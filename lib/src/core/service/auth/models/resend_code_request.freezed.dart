// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResendCodeRequest _$ResendCodeRequestFromJson(Map<String, dynamic> json) {
  return _ResendCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$ResendCodeRequest {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendCodeRequestCopyWith<ResendCodeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendCodeRequestCopyWith<$Res> {
  factory $ResendCodeRequestCopyWith(
          ResendCodeRequest value, $Res Function(ResendCodeRequest) then) =
      _$ResendCodeRequestCopyWithImpl<$Res, ResendCodeRequest>;
  @useResult
  $Res call({@JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class _$ResendCodeRequestCopyWithImpl<$Res, $Val extends ResendCodeRequest>
    implements $ResendCodeRequestCopyWith<$Res> {
  _$ResendCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResendCodeRequestImplCopyWith<$Res>
    implements $ResendCodeRequestCopyWith<$Res> {
  factory _$$ResendCodeRequestImplCopyWith(_$ResendCodeRequestImpl value,
          $Res Function(_$ResendCodeRequestImpl) then) =
      __$$ResendCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class __$$ResendCodeRequestImplCopyWithImpl<$Res>
    extends _$ResendCodeRequestCopyWithImpl<$Res, _$ResendCodeRequestImpl>
    implements _$$ResendCodeRequestImplCopyWith<$Res> {
  __$$ResendCodeRequestImplCopyWithImpl(_$ResendCodeRequestImpl _value,
      $Res Function(_$ResendCodeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$ResendCodeRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendCodeRequestImpl implements _ResendCodeRequest {
  const _$ResendCodeRequestImpl(
      {@JsonKey(name: 'user_id') required this.userId});

  factory _$ResendCodeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResendCodeRequestImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;

  @override
  String toString() {
    return 'ResendCodeRequest(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendCodeRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendCodeRequestImplCopyWith<_$ResendCodeRequestImpl> get copyWith =>
      __$$ResendCodeRequestImplCopyWithImpl<_$ResendCodeRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendCodeRequestImplToJson(
      this,
    );
  }
}

abstract class _ResendCodeRequest implements ResendCodeRequest {
  const factory _ResendCodeRequest(
          {@JsonKey(name: 'user_id') required final String userId}) =
      _$ResendCodeRequestImpl;

  factory _ResendCodeRequest.fromJson(Map<String, dynamic> json) =
      _$ResendCodeRequestImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$ResendCodeRequestImplCopyWith<_$ResendCodeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
