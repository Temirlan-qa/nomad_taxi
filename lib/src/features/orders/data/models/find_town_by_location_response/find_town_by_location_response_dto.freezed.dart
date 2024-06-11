// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_town_by_location_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FindTownByLocationResponseDto _$FindTownByLocationResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _FindTownByLocationResponseDto.fromJson(json);
}

/// @nodoc
mixin _$FindTownByLocationResponseDto {
  String get status => throw _privateConstructorUsedError;
  TownDto get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindTownByLocationResponseDtoCopyWith<FindTownByLocationResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindTownByLocationResponseDtoCopyWith<$Res> {
  factory $FindTownByLocationResponseDtoCopyWith(
          FindTownByLocationResponseDto value,
          $Res Function(FindTownByLocationResponseDto) then) =
      _$FindTownByLocationResponseDtoCopyWithImpl<$Res,
          FindTownByLocationResponseDto>;
  @useResult
  $Res call({String status, TownDto data});

  $TownDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$FindTownByLocationResponseDtoCopyWithImpl<$Res,
        $Val extends FindTownByLocationResponseDto>
    implements $FindTownByLocationResponseDtoCopyWith<$Res> {
  _$FindTownByLocationResponseDtoCopyWithImpl(this._value, this._then);

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
              as TownDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TownDtoCopyWith<$Res> get data {
    return $TownDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FindTownByLocationResponseDtoImplCopyWith<$Res>
    implements $FindTownByLocationResponseDtoCopyWith<$Res> {
  factory _$$FindTownByLocationResponseDtoImplCopyWith(
          _$FindTownByLocationResponseDtoImpl value,
          $Res Function(_$FindTownByLocationResponseDtoImpl) then) =
      __$$FindTownByLocationResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, TownDto data});

  @override
  $TownDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$FindTownByLocationResponseDtoImplCopyWithImpl<$Res>
    extends _$FindTownByLocationResponseDtoCopyWithImpl<$Res,
        _$FindTownByLocationResponseDtoImpl>
    implements _$$FindTownByLocationResponseDtoImplCopyWith<$Res> {
  __$$FindTownByLocationResponseDtoImplCopyWithImpl(
      _$FindTownByLocationResponseDtoImpl _value,
      $Res Function(_$FindTownByLocationResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$FindTownByLocationResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TownDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FindTownByLocationResponseDtoImpl
    implements _FindTownByLocationResponseDto {
  const _$FindTownByLocationResponseDtoImpl(
      {required this.status, required this.data});

  factory _$FindTownByLocationResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FindTownByLocationResponseDtoImplFromJson(json);

  @override
  final String status;
  @override
  final TownDto data;

  @override
  String toString() {
    return 'FindTownByLocationResponseDto(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindTownByLocationResponseDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FindTownByLocationResponseDtoImplCopyWith<
          _$FindTownByLocationResponseDtoImpl>
      get copyWith => __$$FindTownByLocationResponseDtoImplCopyWithImpl<
          _$FindTownByLocationResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FindTownByLocationResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _FindTownByLocationResponseDto
    implements FindTownByLocationResponseDto {
  const factory _FindTownByLocationResponseDto(
      {required final String status,
      required final TownDto data}) = _$FindTownByLocationResponseDtoImpl;

  factory _FindTownByLocationResponseDto.fromJson(Map<String, dynamic> json) =
      _$FindTownByLocationResponseDtoImpl.fromJson;

  @override
  String get status;
  @override
  TownDto get data;
  @override
  @JsonKey(ignore: true)
  _$$FindTownByLocationResponseDtoImplCopyWith<
          _$FindTownByLocationResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
