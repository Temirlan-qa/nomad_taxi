// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_order_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetOrderStatusResponse _$GetOrderStatusResponseFromJson(
    Map<String, dynamic> json) {
  return _GetOrderStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$GetOrderStatusResponse {
  String get status => throw _privateConstructorUsedError;
  OrderStatusDataResponse get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrderStatusResponseCopyWith<GetOrderStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderStatusResponseCopyWith<$Res> {
  factory $GetOrderStatusResponseCopyWith(GetOrderStatusResponse value,
          $Res Function(GetOrderStatusResponse) then) =
      _$GetOrderStatusResponseCopyWithImpl<$Res, GetOrderStatusResponse>;
  @useResult
  $Res call({String status, OrderStatusDataResponse data});

  $OrderStatusDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$GetOrderStatusResponseCopyWithImpl<$Res,
        $Val extends GetOrderStatusResponse>
    implements $GetOrderStatusResponseCopyWith<$Res> {
  _$GetOrderStatusResponseCopyWithImpl(this._value, this._then);

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
              as OrderStatusDataResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderStatusDataResponseCopyWith<$Res> get data {
    return $OrderStatusDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetOrderStatusResponseImplCopyWith<$Res>
    implements $GetOrderStatusResponseCopyWith<$Res> {
  factory _$$GetOrderStatusResponseImplCopyWith(
          _$GetOrderStatusResponseImpl value,
          $Res Function(_$GetOrderStatusResponseImpl) then) =
      __$$GetOrderStatusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, OrderStatusDataResponse data});

  @override
  $OrderStatusDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetOrderStatusResponseImplCopyWithImpl<$Res>
    extends _$GetOrderStatusResponseCopyWithImpl<$Res,
        _$GetOrderStatusResponseImpl>
    implements _$$GetOrderStatusResponseImplCopyWith<$Res> {
  __$$GetOrderStatusResponseImplCopyWithImpl(
      _$GetOrderStatusResponseImpl _value,
      $Res Function(_$GetOrderStatusResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$GetOrderStatusResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderStatusDataResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOrderStatusResponseImpl implements _GetOrderStatusResponse {
  const _$GetOrderStatusResponseImpl(
      {required this.status, required this.data});

  factory _$GetOrderStatusResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOrderStatusResponseImplFromJson(json);

  @override
  final String status;
  @override
  final OrderStatusDataResponse data;

  @override
  String toString() {
    return 'GetOrderStatusResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderStatusResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderStatusResponseImplCopyWith<_$GetOrderStatusResponseImpl>
      get copyWith => __$$GetOrderStatusResponseImplCopyWithImpl<
          _$GetOrderStatusResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOrderStatusResponseImplToJson(
      this,
    );
  }
}

abstract class _GetOrderStatusResponse implements GetOrderStatusResponse {
  const factory _GetOrderStatusResponse(
          {required final String status,
          required final OrderStatusDataResponse data}) =
      _$GetOrderStatusResponseImpl;

  factory _GetOrderStatusResponse.fromJson(Map<String, dynamic> json) =
      _$GetOrderStatusResponseImpl.fromJson;

  @override
  String get status;
  @override
  OrderStatusDataResponse get data;
  @override
  @JsonKey(ignore: true)
  _$$GetOrderStatusResponseImplCopyWith<_$GetOrderStatusResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
