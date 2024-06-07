// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUserInfoRequest _$UpdateUserInfoRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateUserInfoRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserInfoRequest {
  String get name => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserInfoRequestCopyWith<UpdateUserInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserInfoRequestCopyWith<$Res> {
  factory $UpdateUserInfoRequestCopyWith(UpdateUserInfoRequest value,
          $Res Function(UpdateUserInfoRequest) then) =
      _$UpdateUserInfoRequestCopyWithImpl<$Res, UpdateUserInfoRequest>;
  @useResult
  $Res call({String name, String lastName});
}

/// @nodoc
class _$UpdateUserInfoRequestCopyWithImpl<$Res,
        $Val extends UpdateUserInfoRequest>
    implements $UpdateUserInfoRequestCopyWith<$Res> {
  _$UpdateUserInfoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserInfoRequestImplCopyWith<$Res>
    implements $UpdateUserInfoRequestCopyWith<$Res> {
  factory _$$UpdateUserInfoRequestImplCopyWith(
          _$UpdateUserInfoRequestImpl value,
          $Res Function(_$UpdateUserInfoRequestImpl) then) =
      __$$UpdateUserInfoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String lastName});
}

/// @nodoc
class __$$UpdateUserInfoRequestImplCopyWithImpl<$Res>
    extends _$UpdateUserInfoRequestCopyWithImpl<$Res,
        _$UpdateUserInfoRequestImpl>
    implements _$$UpdateUserInfoRequestImplCopyWith<$Res> {
  __$$UpdateUserInfoRequestImplCopyWithImpl(_$UpdateUserInfoRequestImpl _value,
      $Res Function(_$UpdateUserInfoRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lastName = null,
  }) {
    return _then(_$UpdateUserInfoRequestImpl(
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
@JsonSerializable()
class _$UpdateUserInfoRequestImpl implements _UpdateUserInfoRequest {
  const _$UpdateUserInfoRequestImpl(
      {required this.name, required this.lastName});

  factory _$UpdateUserInfoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserInfoRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String lastName;

  @override
  String toString() {
    return 'UpdateUserInfoRequest(name: $name, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserInfoRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserInfoRequestImplCopyWith<_$UpdateUserInfoRequestImpl>
      get copyWith => __$$UpdateUserInfoRequestImplCopyWithImpl<
          _$UpdateUserInfoRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserInfoRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserInfoRequest implements UpdateUserInfoRequest {
  const factory _UpdateUserInfoRequest(
      {required final String name,
      required final String lastName}) = _$UpdateUserInfoRequestImpl;

  factory _UpdateUserInfoRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateUserInfoRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUserInfoRequestImplCopyWith<_$UpdateUserInfoRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
