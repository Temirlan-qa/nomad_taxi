// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateOrderResponse _$UpdateOrderResponseFromJson(Map<String, dynamic> json) {
  return _UpdateOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateOrderResponse {
  String get status => throw _privateConstructorUsedError;
  OrderEntity get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateOrderResponseCopyWith<UpdateOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrderResponseCopyWith<$Res> {
  factory $UpdateOrderResponseCopyWith(
          UpdateOrderResponse value, $Res Function(UpdateOrderResponse) then) =
      _$UpdateOrderResponseCopyWithImpl<$Res, UpdateOrderResponse>;
  @useResult
  $Res call({String status, OrderEntity message});

  $OrderEntityCopyWith<$Res> get message;
}

/// @nodoc
class _$UpdateOrderResponseCopyWithImpl<$Res, $Val extends UpdateOrderResponse>
    implements $UpdateOrderResponseCopyWith<$Res> {
  _$UpdateOrderResponseCopyWithImpl(this._value, this._then);

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
              as OrderEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderEntityCopyWith<$Res> get message {
    return $OrderEntityCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateOrderResponseImplCopyWith<$Res>
    implements $UpdateOrderResponseCopyWith<$Res> {
  factory _$$UpdateOrderResponseImplCopyWith(_$UpdateOrderResponseImpl value,
          $Res Function(_$UpdateOrderResponseImpl) then) =
      __$$UpdateOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, OrderEntity message});

  @override
  $OrderEntityCopyWith<$Res> get message;
}

/// @nodoc
class __$$UpdateOrderResponseImplCopyWithImpl<$Res>
    extends _$UpdateOrderResponseCopyWithImpl<$Res, _$UpdateOrderResponseImpl>
    implements _$$UpdateOrderResponseImplCopyWith<$Res> {
  __$$UpdateOrderResponseImplCopyWithImpl(_$UpdateOrderResponseImpl _value,
      $Res Function(_$UpdateOrderResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$UpdateOrderResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as OrderEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateOrderResponseImpl implements _UpdateOrderResponse {
  const _$UpdateOrderResponseImpl(
      {required this.status, required this.message});

  factory _$UpdateOrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateOrderResponseImplFromJson(json);

  @override
  final String status;
  @override
  final OrderEntity message;

  @override
  String toString() {
    return 'UpdateOrderResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderResponseImplCopyWith<_$UpdateOrderResponseImpl> get copyWith =>
      __$$UpdateOrderResponseImplCopyWithImpl<_$UpdateOrderResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _UpdateOrderResponse implements UpdateOrderResponse {
  const factory _UpdateOrderResponse(
      {required final String status,
      required final OrderEntity message}) = _$UpdateOrderResponseImpl;

  factory _UpdateOrderResponse.fromJson(Map<String, dynamic> json) =
      _$UpdateOrderResponseImpl.fromJson;

  @override
  String get status;
  @override
  OrderEntity get message;
  @override
  @JsonKey(ignore: true)
  _$$UpdateOrderResponseImplCopyWith<_$UpdateOrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
