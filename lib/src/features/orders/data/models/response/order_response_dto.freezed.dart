// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderResponseDto _$OrderResponseDtoFromJson(Map<String, dynamic> json) {
  return _OrderResponseDto.fromJson(json);
}

/// @nodoc
mixin _$OrderResponseDto {
  String get status => throw _privateConstructorUsedError;
  OrderDto get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderResponseDtoCopyWith<OrderResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseDtoCopyWith<$Res> {
  factory $OrderResponseDtoCopyWith(
          OrderResponseDto value, $Res Function(OrderResponseDto) then) =
      _$OrderResponseDtoCopyWithImpl<$Res, OrderResponseDto>;
  @useResult
  $Res call({String status, OrderDto data});

  $OrderDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$OrderResponseDtoCopyWithImpl<$Res, $Val extends OrderResponseDto>
    implements $OrderResponseDtoCopyWith<$Res> {
  _$OrderResponseDtoCopyWithImpl(this._value, this._then);

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
              as OrderDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderDtoCopyWith<$Res> get data {
    return $OrderDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderResponseDtoImplCopyWith<$Res>
    implements $OrderResponseDtoCopyWith<$Res> {
  factory _$$OrderResponseDtoImplCopyWith(_$OrderResponseDtoImpl value,
          $Res Function(_$OrderResponseDtoImpl) then) =
      __$$OrderResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, OrderDto data});

  @override
  $OrderDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$OrderResponseDtoImplCopyWithImpl<$Res>
    extends _$OrderResponseDtoCopyWithImpl<$Res, _$OrderResponseDtoImpl>
    implements _$$OrderResponseDtoImplCopyWith<$Res> {
  __$$OrderResponseDtoImplCopyWithImpl(_$OrderResponseDtoImpl _value,
      $Res Function(_$OrderResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$OrderResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderResponseDtoImpl implements _OrderResponseDto {
  const _$OrderResponseDtoImpl({required this.status, required this.data});

  factory _$OrderResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderResponseDtoImplFromJson(json);

  @override
  final String status;
  @override
  final OrderDto data;

  @override
  String toString() {
    return 'OrderResponseDto(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderResponseDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderResponseDtoImplCopyWith<_$OrderResponseDtoImpl> get copyWith =>
      __$$OrderResponseDtoImplCopyWithImpl<_$OrderResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _OrderResponseDto implements OrderResponseDto {
  const factory _OrderResponseDto(
      {required final String status,
      required final OrderDto data}) = _$OrderResponseDtoImpl;

  factory _OrderResponseDto.fromJson(Map<String, dynamic> json) =
      _$OrderResponseDtoImpl.fromJson;

  @override
  String get status;
  @override
  OrderDto get data;
  @override
  @JsonKey(ignore: true)
  _$$OrderResponseDtoImplCopyWith<_$OrderResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
