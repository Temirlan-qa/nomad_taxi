// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_order_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateOrderResponseDto _$UpdateOrderResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _UpdateOrderResponseDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateOrderResponseDto {
  String get status => throw _privateConstructorUsedError;
  OrderDto get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateOrderResponseDtoCopyWith<UpdateOrderResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrderResponseDtoCopyWith<$Res> {
  factory $UpdateOrderResponseDtoCopyWith(UpdateOrderResponseDto value,
          $Res Function(UpdateOrderResponseDto) then) =
      _$UpdateOrderResponseDtoCopyWithImpl<$Res, UpdateOrderResponseDto>;
  @useResult
  $Res call({String status, OrderDto message});

  $OrderDtoCopyWith<$Res> get message;
}

/// @nodoc
class _$UpdateOrderResponseDtoCopyWithImpl<$Res,
        $Val extends UpdateOrderResponseDto>
    implements $UpdateOrderResponseDtoCopyWith<$Res> {
  _$UpdateOrderResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as OrderDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderDtoCopyWith<$Res> get message {
    return $OrderDtoCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateOrderResponseDtoImplCopyWith<$Res>
    implements $UpdateOrderResponseDtoCopyWith<$Res> {
  factory _$$UpdateOrderResponseDtoImplCopyWith(
          _$UpdateOrderResponseDtoImpl value,
          $Res Function(_$UpdateOrderResponseDtoImpl) then) =
      __$$UpdateOrderResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, OrderDto message});

  @override
  $OrderDtoCopyWith<$Res> get message;
}

/// @nodoc
class __$$UpdateOrderResponseDtoImplCopyWithImpl<$Res>
    extends _$UpdateOrderResponseDtoCopyWithImpl<$Res,
        _$UpdateOrderResponseDtoImpl>
    implements _$$UpdateOrderResponseDtoImplCopyWith<$Res> {
  __$$UpdateOrderResponseDtoImplCopyWithImpl(
      _$UpdateOrderResponseDtoImpl _value,
      $Res Function(_$UpdateOrderResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$UpdateOrderResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as OrderDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateOrderResponseDtoImpl implements _UpdateOrderResponseDto {
  const _$UpdateOrderResponseDtoImpl(
      {required this.status, required this.message});

  factory _$UpdateOrderResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateOrderResponseDtoImplFromJson(json);

  @override
  final String status;
  @override
  final OrderDto message;

  @override
  String toString() {
    return 'UpdateOrderResponseDto(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderResponseDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderResponseDtoImplCopyWith<_$UpdateOrderResponseDtoImpl>
      get copyWith => __$$UpdateOrderResponseDtoImplCopyWithImpl<
          _$UpdateOrderResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateOrderResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateOrderResponseDto implements UpdateOrderResponseDto {
  const factory _UpdateOrderResponseDto(
      {required final String status,
      required final OrderDto message}) = _$UpdateOrderResponseDtoImpl;

  factory _UpdateOrderResponseDto.fromJson(Map<String, dynamic> json) =
      _$UpdateOrderResponseDtoImpl.fromJson;

  @override
  String get status;
  @override
  OrderDto get message;
  @override
  @JsonKey(ignore: true)
  _$$UpdateOrderResponseDtoImplCopyWith<_$UpdateOrderResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
