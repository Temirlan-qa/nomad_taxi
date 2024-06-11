// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderStatusDataResponse _$OrderStatusDataResponseFromJson(
    Map<String, dynamic> json) {
  return _OrderStatusDataResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderStatusDataResponse {
  String get socketId => throw _privateConstructorUsedError;
  int get activityTimeout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderStatusDataResponseCopyWith<OrderStatusDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusDataResponseCopyWith<$Res> {
  factory $OrderStatusDataResponseCopyWith(OrderStatusDataResponse value,
          $Res Function(OrderStatusDataResponse) then) =
      _$OrderStatusDataResponseCopyWithImpl<$Res, OrderStatusDataResponse>;
  @useResult
  $Res call({String socketId, int activityTimeout});
}

/// @nodoc
class _$OrderStatusDataResponseCopyWithImpl<$Res,
        $Val extends OrderStatusDataResponse>
    implements $OrderStatusDataResponseCopyWith<$Res> {
  _$OrderStatusDataResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$OrderStatusDataResponseImplCopyWith<$Res>
    implements $OrderStatusDataResponseCopyWith<$Res> {
  factory _$$OrderStatusDataResponseImplCopyWith(
          _$OrderStatusDataResponseImpl value,
          $Res Function(_$OrderStatusDataResponseImpl) then) =
      __$$OrderStatusDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String socketId, int activityTimeout});
}

/// @nodoc
class __$$OrderStatusDataResponseImplCopyWithImpl<$Res>
    extends _$OrderStatusDataResponseCopyWithImpl<$Res,
        _$OrderStatusDataResponseImpl>
    implements _$$OrderStatusDataResponseImplCopyWith<$Res> {
  __$$OrderStatusDataResponseImplCopyWithImpl(
      _$OrderStatusDataResponseImpl _value,
      $Res Function(_$OrderStatusDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socketId = null,
    Object? activityTimeout = null,
  }) {
    return _then(_$OrderStatusDataResponseImpl(
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
class _$OrderStatusDataResponseImpl implements _OrderStatusDataResponse {
  const _$OrderStatusDataResponseImpl(
      {required this.socketId, required this.activityTimeout});

  factory _$OrderStatusDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatusDataResponseImplFromJson(json);

  @override
  final String socketId;
  @override
  final int activityTimeout;

  @override
  String toString() {
    return 'OrderStatusDataResponse(socketId: $socketId, activityTimeout: $activityTimeout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusDataResponseImpl &&
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
  _$$OrderStatusDataResponseImplCopyWith<_$OrderStatusDataResponseImpl>
      get copyWith => __$$OrderStatusDataResponseImplCopyWithImpl<
          _$OrderStatusDataResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStatusDataResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderStatusDataResponse implements OrderStatusDataResponse {
  const factory _OrderStatusDataResponse(
      {required final String socketId,
      required final int activityTimeout}) = _$OrderStatusDataResponseImpl;

  factory _OrderStatusDataResponse.fromJson(Map<String, dynamic> json) =
      _$OrderStatusDataResponseImpl.fromJson;

  @override
  String get socketId;
  @override
  int get activityTimeout;
  @override
  @JsonKey(ignore: true)
  _$$OrderStatusDataResponseImplCopyWith<_$OrderStatusDataResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
