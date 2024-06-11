// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_town_by_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FindTownByLocationResponse _$FindTownByLocationResponseFromJson(
    Map<String, dynamic> json) {
  return _FindTownByLocationResponse.fromJson(json);
}

/// @nodoc
mixin _$FindTownByLocationResponse {
  String get status => throw _privateConstructorUsedError;
  TownEntity get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindTownByLocationResponseCopyWith<FindTownByLocationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindTownByLocationResponseCopyWith<$Res> {
  factory $FindTownByLocationResponseCopyWith(FindTownByLocationResponse value,
          $Res Function(FindTownByLocationResponse) then) =
      _$FindTownByLocationResponseCopyWithImpl<$Res,
          FindTownByLocationResponse>;
  @useResult
  $Res call({String status, TownEntity data});

  $TownEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$FindTownByLocationResponseCopyWithImpl<$Res,
        $Val extends FindTownByLocationResponse>
    implements $FindTownByLocationResponseCopyWith<$Res> {
  _$FindTownByLocationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TownEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TownEntityCopyWith<$Res> get data {
    return $TownEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FindTownByLocationResponseImplCopyWith<$Res>
    implements $FindTownByLocationResponseCopyWith<$Res> {
  factory _$$FindTownByLocationResponseImplCopyWith(
          _$FindTownByLocationResponseImpl value,
          $Res Function(_$FindTownByLocationResponseImpl) then) =
      __$$FindTownByLocationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, TownEntity data});

  @override
  $TownEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$FindTownByLocationResponseImplCopyWithImpl<$Res>
    extends _$FindTownByLocationResponseCopyWithImpl<$Res,
        _$FindTownByLocationResponseImpl>
    implements _$$FindTownByLocationResponseImplCopyWith<$Res> {
  __$$FindTownByLocationResponseImplCopyWithImpl(
      _$FindTownByLocationResponseImpl _value,
      $Res Function(_$FindTownByLocationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$FindTownByLocationResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TownEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FindTownByLocationResponseImpl implements _FindTownByLocationResponse {
  const _$FindTownByLocationResponseImpl(
      {required this.status, required this.data});

  factory _$FindTownByLocationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FindTownByLocationResponseImplFromJson(json);

  @override
  final String status;
  @override
  final TownEntity data;

  @override
  String toString() {
    return 'FindTownByLocationResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindTownByLocationResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FindTownByLocationResponseImplCopyWith<_$FindTownByLocationResponseImpl>
      get copyWith => __$$FindTownByLocationResponseImplCopyWithImpl<
          _$FindTownByLocationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FindTownByLocationResponseImplToJson(
      this,
    );
  }
}

abstract class _FindTownByLocationResponse
    implements FindTownByLocationResponse {
  const factory _FindTownByLocationResponse(
      {required final String status,
      required final TownEntity data}) = _$FindTownByLocationResponseImpl;

  factory _FindTownByLocationResponse.fromJson(Map<String, dynamic> json) =
      _$FindTownByLocationResponseImpl.fromJson;

  @override
  String get status;
  @override
  TownEntity get data;
  @override
  @JsonKey(ignore: true)
  _$$FindTownByLocationResponseImplCopyWith<_$FindTownByLocationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
