// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderStatusDataDto _$OrderStatusDataDtoFromJson(Map<String, dynamic> json) {
  return _OrderStatusDataDto.fromJson(json);
}

/// @nodoc
mixin _$OrderStatusDataDto {
  @JsonKey(name: 'socket_id')
  String get socketId => throw _privateConstructorUsedError;
  @JsonKey(name: 'activity_timeout')
  int get activityTimeout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderStatusDataDtoCopyWith<OrderStatusDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusDataDtoCopyWith<$Res> {
  factory $OrderStatusDataDtoCopyWith(
          OrderStatusDataDto value, $Res Function(OrderStatusDataDto) then) =
      _$OrderStatusDataDtoCopyWithImpl<$Res, OrderStatusDataDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'socket_id') String socketId,
      @JsonKey(name: 'activity_timeout') int activityTimeout});
}

/// @nodoc
class _$OrderStatusDataDtoCopyWithImpl<$Res, $Val extends OrderStatusDataDto>
    implements $OrderStatusDataDtoCopyWith<$Res> {
  _$OrderStatusDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socketId = null,
    Object? activityTimeout = null,
  }) {
    return _then(_value.copyWith(
      socketId: null == socketId
          ? _value.socketId
          : socketId // ignore: cast_nullable_to_non_nullable
              as String,
      activityTimeout: null == activityTimeout
          ? _value.activityTimeout
          : activityTimeout // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderStatusDataDtoImplCopyWith<$Res>
    implements $OrderStatusDataDtoCopyWith<$Res> {
  factory _$$OrderStatusDataDtoImplCopyWith(_$OrderStatusDataDtoImpl value,
          $Res Function(_$OrderStatusDataDtoImpl) then) =
      __$$OrderStatusDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'socket_id') String socketId,
      @JsonKey(name: 'activity_timeout') int activityTimeout});
}

/// @nodoc
class __$$OrderStatusDataDtoImplCopyWithImpl<$Res>
    extends _$OrderStatusDataDtoCopyWithImpl<$Res, _$OrderStatusDataDtoImpl>
    implements _$$OrderStatusDataDtoImplCopyWith<$Res> {
  __$$OrderStatusDataDtoImplCopyWithImpl(_$OrderStatusDataDtoImpl _value,
      $Res Function(_$OrderStatusDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socketId = null,
    Object? activityTimeout = null,
  }) {
    return _then(_$OrderStatusDataDtoImpl(
      socketId: null == socketId
          ? _value.socketId
          : socketId // ignore: cast_nullable_to_non_nullable
              as String,
      activityTimeout: null == activityTimeout
          ? _value.activityTimeout
          : activityTimeout // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderStatusDataDtoImpl implements _OrderStatusDataDto {
  const _$OrderStatusDataDtoImpl(
      {@JsonKey(name: 'socket_id') required this.socketId,
      @JsonKey(name: 'activity_timeout') required this.activityTimeout});

  factory _$OrderStatusDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatusDataDtoImplFromJson(json);

  @override
  @JsonKey(name: 'socket_id')
  final String socketId;
  @override
  @JsonKey(name: 'activity_timeout')
  final int activityTimeout;

  @override
  String toString() {
    return 'OrderStatusDataDto(socketId: $socketId, activityTimeout: $activityTimeout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusDataDtoImpl &&
            (identical(other.socketId, socketId) ||
                other.socketId == socketId) &&
            (identical(other.activityTimeout, activityTimeout) ||
                other.activityTimeout == activityTimeout));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, socketId, activityTimeout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatusDataDtoImplCopyWith<_$OrderStatusDataDtoImpl> get copyWith =>
      __$$OrderStatusDataDtoImplCopyWithImpl<_$OrderStatusDataDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStatusDataDtoImplToJson(
      this,
    );
  }
}

abstract class _OrderStatusDataDto implements OrderStatusDataDto {
  const factory _OrderStatusDataDto(
      {@JsonKey(name: 'socket_id') required final String socketId,
      @JsonKey(name: 'activity_timeout')
      required final int activityTimeout}) = _$OrderStatusDataDtoImpl;

  factory _OrderStatusDataDto.fromJson(Map<String, dynamic> json) =
      _$OrderStatusDataDtoImpl.fromJson;

  @override
  @JsonKey(name: 'socket_id')
  String get socketId;
  @override
  @JsonKey(name: 'activity_timeout')
  int get activityTimeout;
  @override
  @JsonKey(ignore: true)
  _$$OrderStatusDataDtoImplCopyWith<_$OrderStatusDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
