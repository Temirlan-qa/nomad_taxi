// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) {
  return _OrderDto.fromJson(json);
}

/// @nodoc
mixin _$OrderDto {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_point')
  String get startPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_point')
  String get endPoint => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_route')
  bool get hasRoute =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'created_at') required String createdAt,
// @JsonKey(name: 'pay_method') required PayMethodDto payMethod,
// @JsonKey(name: 'waiting_time') int? waitingTime,
// PartnerDto? partner,
// required String phone,
// @JsonKey(name: 'town_id') required int townId,
  List<PointDto>? get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDtoCopyWith<OrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDtoCopyWith<$Res> {
  factory $OrderDtoCopyWith(OrderDto value, $Res Function(OrderDto) then) =
      _$OrderDtoCopyWithImpl<$Res, OrderDto>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'start_point') String startPoint,
      @JsonKey(name: 'end_point') String endPoint,
      int price,
      String? comment,
      String status,
      @JsonKey(name: 'has_route') bool hasRoute,
      List<PointDto>? points});
}

/// @nodoc
class _$OrderDtoCopyWithImpl<$Res, $Val extends OrderDto>
    implements $OrderDtoCopyWith<$Res> {
  _$OrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startPoint = null,
    Object? endPoint = null,
    Object? price = null,
    Object? comment = freezed,
    Object? status = null,
    Object? hasRoute = null,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as String,
      endPoint: null == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      hasRoute: null == hasRoute
          ? _value.hasRoute
          : hasRoute // ignore: cast_nullable_to_non_nullable
              as bool,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDtoImplCopyWith<$Res>
    implements $OrderDtoCopyWith<$Res> {
  factory _$$OrderDtoImplCopyWith(
          _$OrderDtoImpl value, $Res Function(_$OrderDtoImpl) then) =
      __$$OrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'start_point') String startPoint,
      @JsonKey(name: 'end_point') String endPoint,
      int price,
      String? comment,
      String status,
      @JsonKey(name: 'has_route') bool hasRoute,
      List<PointDto>? points});
}

/// @nodoc
class __$$OrderDtoImplCopyWithImpl<$Res>
    extends _$OrderDtoCopyWithImpl<$Res, _$OrderDtoImpl>
    implements _$$OrderDtoImplCopyWith<$Res> {
  __$$OrderDtoImplCopyWithImpl(
      _$OrderDtoImpl _value, $Res Function(_$OrderDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startPoint = null,
    Object? endPoint = null,
    Object? price = null,
    Object? comment = freezed,
    Object? status = null,
    Object? hasRoute = null,
    Object? points = freezed,
  }) {
    return _then(_$OrderDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as String,
      endPoint: null == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      hasRoute: null == hasRoute
          ? _value.hasRoute
          : hasRoute // ignore: cast_nullable_to_non_nullable
              as bool,
      points: freezed == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDtoImpl implements _OrderDto {
  const _$OrderDtoImpl(
      {required this.id,
      @JsonKey(name: 'start_point') required this.startPoint,
      @JsonKey(name: 'end_point') required this.endPoint,
      required this.price,
      this.comment,
      required this.status,
      @JsonKey(name: 'has_route') required this.hasRoute,
      final List<PointDto>? points})
      : _points = points;

  factory _$OrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDtoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'start_point')
  final String startPoint;
  @override
  @JsonKey(name: 'end_point')
  final String endPoint;
  @override
  final int price;
  @override
  final String? comment;
  @override
  final String status;
  @override
  @JsonKey(name: 'has_route')
  final bool hasRoute;
// @JsonKey(name: 'created_at') required String createdAt,
// @JsonKey(name: 'pay_method') required PayMethodDto payMethod,
// @JsonKey(name: 'waiting_time') int? waitingTime,
// PartnerDto? partner,
// required String phone,
// @JsonKey(name: 'town_id') required int townId,
  final List<PointDto>? _points;
// @JsonKey(name: 'created_at') required String createdAt,
// @JsonKey(name: 'pay_method') required PayMethodDto payMethod,
// @JsonKey(name: 'waiting_time') int? waitingTime,
// PartnerDto? partner,
// required String phone,
// @JsonKey(name: 'town_id') required int townId,
  @override
  List<PointDto>? get points {
    final value = _points;
    if (value == null) return null;
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderDto(id: $id, startPoint: $startPoint, endPoint: $endPoint, price: $price, comment: $comment, status: $status, hasRoute: $hasRoute, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startPoint, startPoint) ||
                other.startPoint == startPoint) &&
            (identical(other.endPoint, endPoint) ||
                other.endPoint == endPoint) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hasRoute, hasRoute) ||
                other.hasRoute == hasRoute) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, startPoint, endPoint, price,
      comment, status, hasRoute, const DeepCollectionEquality().hash(_points));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDtoImplCopyWith<_$OrderDtoImpl> get copyWith =>
      __$$OrderDtoImplCopyWithImpl<_$OrderDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDtoImplToJson(
      this,
    );
  }
}

abstract class _OrderDto implements OrderDto {
  const factory _OrderDto(
      {required final int id,
      @JsonKey(name: 'start_point') required final String startPoint,
      @JsonKey(name: 'end_point') required final String endPoint,
      required final int price,
      final String? comment,
      required final String status,
      @JsonKey(name: 'has_route') required final bool hasRoute,
      final List<PointDto>? points}) = _$OrderDtoImpl;

  factory _OrderDto.fromJson(Map<String, dynamic> json) =
      _$OrderDtoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'start_point')
  String get startPoint;
  @override
  @JsonKey(name: 'end_point')
  String get endPoint;
  @override
  int get price;
  @override
  String? get comment;
  @override
  String get status;
  @override
  @JsonKey(name: 'has_route')
  bool get hasRoute;
  @override // @JsonKey(name: 'created_at') required String createdAt,
// @JsonKey(name: 'pay_method') required PayMethodDto payMethod,
// @JsonKey(name: 'waiting_time') int? waitingTime,
// PartnerDto? partner,
// required String phone,
// @JsonKey(name: 'town_id') required int townId,
  List<PointDto>? get points;
  @override
  @JsonKey(ignore: true)
  _$$OrderDtoImplCopyWith<_$OrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
