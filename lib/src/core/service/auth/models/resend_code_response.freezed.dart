// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResendCodeResponse _$ResendCodeResponseFromJson(Map<String, dynamic> json) {
  return _ResendCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$ResendCodeResponse {
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendCodeResponseCopyWith<ResendCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendCodeResponseCopyWith<$Res> {
  factory $ResendCodeResponseCopyWith(
          ResendCodeResponse value, $Res Function(ResendCodeResponse) then) =
      _$ResendCodeResponseCopyWithImpl<$Res, ResendCodeResponse>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class _$ResendCodeResponseCopyWithImpl<$Res, $Val extends ResendCodeResponse>
    implements $ResendCodeResponseCopyWith<$Res> {
  _$ResendCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResendCodeResponseImplCopyWith<$Res>
    implements $ResendCodeResponseCopyWith<$Res> {
  factory _$$ResendCodeResponseImplCopyWith(_$ResendCodeResponseImpl value,
          $Res Function(_$ResendCodeResponseImpl) then) =
      __$$ResendCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$ResendCodeResponseImplCopyWithImpl<$Res>
    extends _$ResendCodeResponseCopyWithImpl<$Res, _$ResendCodeResponseImpl>
    implements _$$ResendCodeResponseImplCopyWith<$Res> {
  __$$ResendCodeResponseImplCopyWithImpl(_$ResendCodeResponseImpl _value,
      $Res Function(_$ResendCodeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ResendCodeResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendCodeResponseImpl implements _ResendCodeResponse {
  const _$ResendCodeResponseImpl({required this.status});

  factory _$ResendCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResendCodeResponseImplFromJson(json);

  @override
  final String status;

  @override
  String toString() {
    return 'ResendCodeResponse(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendCodeResponseImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendCodeResponseImplCopyWith<_$ResendCodeResponseImpl> get copyWith =>
      __$$ResendCodeResponseImplCopyWithImpl<_$ResendCodeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendCodeResponseImplToJson(
      this,
    );
  }
}

abstract class _ResendCodeResponse implements ResendCodeResponse {
  const factory _ResendCodeResponse({required final String status}) =
      _$ResendCodeResponseImpl;

  factory _ResendCodeResponse.fromJson(Map<String, dynamic> json) =
      _$ResendCodeResponseImpl.fromJson;

  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$ResendCodeResponseImplCopyWith<_$ResendCodeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
