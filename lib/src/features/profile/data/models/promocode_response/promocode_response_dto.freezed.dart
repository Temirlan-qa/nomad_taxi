// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promocode_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromocodeResponseDto _$PromocodeResponseDtoFromJson(Map<String, dynamic> json) {
  return _PromocodeResponseDto.fromJson(json);
}

/// @nodoc
mixin _$PromocodeResponseDto {
  bool get success => throw _privateConstructorUsedError;
  PromocodeDto get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromocodeResponseDtoCopyWith<PromocodeResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromocodeResponseDtoCopyWith<$Res> {
  factory $PromocodeResponseDtoCopyWith(PromocodeResponseDto value,
          $Res Function(PromocodeResponseDto) then) =
      _$PromocodeResponseDtoCopyWithImpl<$Res, PromocodeResponseDto>;
  @useResult
  $Res call({bool success, PromocodeDto data});

  $PromocodeDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$PromocodeResponseDtoCopyWithImpl<$Res,
        $Val extends PromocodeResponseDto>
    implements $PromocodeResponseDtoCopyWith<$Res> {
  _$PromocodeResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PromocodeDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PromocodeDtoCopyWith<$Res> get data {
    return $PromocodeDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PromocodeResponseDtoImplCopyWith<$Res>
    implements $PromocodeResponseDtoCopyWith<$Res> {
  factory _$$PromocodeResponseDtoImplCopyWith(_$PromocodeResponseDtoImpl value,
          $Res Function(_$PromocodeResponseDtoImpl) then) =
      __$$PromocodeResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, PromocodeDto data});

  @override
  $PromocodeDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$PromocodeResponseDtoImplCopyWithImpl<$Res>
    extends _$PromocodeResponseDtoCopyWithImpl<$Res, _$PromocodeResponseDtoImpl>
    implements _$$PromocodeResponseDtoImplCopyWith<$Res> {
  __$$PromocodeResponseDtoImplCopyWithImpl(_$PromocodeResponseDtoImpl _value,
      $Res Function(_$PromocodeResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$PromocodeResponseDtoImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PromocodeDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromocodeResponseDtoImpl implements _PromocodeResponseDto {
  const _$PromocodeResponseDtoImpl({required this.success, required this.data});

  factory _$PromocodeResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromocodeResponseDtoImplFromJson(json);

  @override
  final bool success;
  @override
  final PromocodeDto data;

  @override
  String toString() {
    return 'PromocodeResponseDto(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromocodeResponseDtoImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromocodeResponseDtoImplCopyWith<_$PromocodeResponseDtoImpl>
      get copyWith =>
          __$$PromocodeResponseDtoImplCopyWithImpl<_$PromocodeResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromocodeResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _PromocodeResponseDto implements PromocodeResponseDto {
  const factory _PromocodeResponseDto(
      {required final bool success,
      required final PromocodeDto data}) = _$PromocodeResponseDtoImpl;

  factory _PromocodeResponseDto.fromJson(Map<String, dynamic> json) =
      _$PromocodeResponseDtoImpl.fromJson;

  @override
  bool get success;
  @override
  PromocodeDto get data;
  @override
  @JsonKey(ignore: true)
  _$$PromocodeResponseDtoImplCopyWith<_$PromocodeResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
