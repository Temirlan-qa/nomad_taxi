// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_order_status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetOrderStatusResponseDto _$GetOrderStatusResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _GetOrderStatusResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetOrderStatusResponseDto {
  String get status => throw _privateConstructorUsedError;
  OrderStatusDataDto get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrderStatusResponseDtoCopyWith<GetOrderStatusResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderStatusResponseDtoCopyWith<$Res> {
  factory $GetOrderStatusResponseDtoCopyWith(GetOrderStatusResponseDto value,
          $Res Function(GetOrderStatusResponseDto) then) =
      _$GetOrderStatusResponseDtoCopyWithImpl<$Res, GetOrderStatusResponseDto>;
  @useResult
  $Res call({String status, OrderStatusDataDto data});

  $OrderStatusDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$GetOrderStatusResponseDtoCopyWithImpl<$Res,
        $Val extends GetOrderStatusResponseDto>
    implements $GetOrderStatusResponseDtoCopyWith<$Res> {
  _$GetOrderStatusResponseDtoCopyWithImpl(this._value, this._then);

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
              as OrderStatusDataDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderStatusDataDtoCopyWith<$Res> get data {
    return $OrderStatusDataDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetOrderStatusResponseDtoImplCopyWith<$Res>
    implements $GetOrderStatusResponseDtoCopyWith<$Res> {
  factory _$$GetOrderStatusResponseDtoImplCopyWith(
          _$GetOrderStatusResponseDtoImpl value,
          $Res Function(_$GetOrderStatusResponseDtoImpl) then) =
      __$$GetOrderStatusResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, OrderStatusDataDto data});

  @override
  $OrderStatusDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetOrderStatusResponseDtoImplCopyWithImpl<$Res>
    extends _$GetOrderStatusResponseDtoCopyWithImpl<$Res,
        _$GetOrderStatusResponseDtoImpl>
    implements _$$GetOrderStatusResponseDtoImplCopyWith<$Res> {
  __$$GetOrderStatusResponseDtoImplCopyWithImpl(
      _$GetOrderStatusResponseDtoImpl _value,
      $Res Function(_$GetOrderStatusResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$GetOrderStatusResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderStatusDataDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOrderStatusResponseDtoImpl implements _GetOrderStatusResponseDto {
  const _$GetOrderStatusResponseDtoImpl(
      {required this.status, required this.data});

  factory _$GetOrderStatusResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOrderStatusResponseDtoImplFromJson(json);

  @override
  final String status;
  @override
  final OrderStatusDataDto data;

  @override
  String toString() {
    return 'GetOrderStatusResponseDto(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderStatusResponseDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderStatusResponseDtoImplCopyWith<_$GetOrderStatusResponseDtoImpl>
      get copyWith => __$$GetOrderStatusResponseDtoImplCopyWithImpl<
          _$GetOrderStatusResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOrderStatusResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetOrderStatusResponseDto implements GetOrderStatusResponseDto {
  const factory _GetOrderStatusResponseDto(
          {required final String status,
          required final OrderStatusDataDto data}) =
      _$GetOrderStatusResponseDtoImpl;

  factory _GetOrderStatusResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetOrderStatusResponseDtoImpl.fromJson;

  @override
  String get status;
  @override
  OrderStatusDataDto get data;
  @override
  @JsonKey(ignore: true)
  _$$GetOrderStatusResponseDtoImplCopyWith<_$GetOrderStatusResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
