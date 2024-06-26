// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderEntity {
  int get id => throw _privateConstructorUsedError;
  String get startPoint => throw _privateConstructorUsedError;
  String get endPoint => throw _privateConstructorUsedError;
  String get routeType => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool get hasRoute => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_method')
  PayMethodEntity? get payMethod => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  Partner? get partner => throw _privateConstructorUsedError;
  int? get waitingTime => throw _privateConstructorUsedError;
  int? get townId => throw _privateConstructorUsedError;
  List<PointEntity> get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res, OrderEntity>;
  @useResult
  $Res call(
      {int id,
      String startPoint,
      String endPoint,
      String routeType,
      int price,
      String? comment,
      String? status,
      bool hasRoute,
      String createdAt,
      @JsonKey(name: 'pay_method') PayMethodEntity? payMethod,
      String phone,
      Partner? partner,
      int? waitingTime,
      int? townId,
      List<PointEntity> points});

  $PayMethodEntityCopyWith<$Res>? get payMethod;
  $PartnerCopyWith<$Res>? get partner;
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res, $Val extends OrderEntity>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

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
    Object? routeType = null,
    Object? price = null,
    Object? comment = freezed,
    Object? status = freezed,
    Object? hasRoute = null,
    Object? createdAt = null,
    Object? payMethod = freezed,
    Object? phone = null,
    Object? partner = freezed,
    Object? waitingTime = freezed,
    Object? townId = freezed,
    Object? points = null,
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
      routeType: null == routeType
          ? _value.routeType
          : routeType // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      hasRoute: null == hasRoute
          ? _value.hasRoute
          : hasRoute // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      payMethod: freezed == payMethod
          ? _value.payMethod
          : payMethod // ignore: cast_nullable_to_non_nullable
              as PayMethodEntity?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as Partner?,
      waitingTime: freezed == waitingTime
          ? _value.waitingTime
          : waitingTime // ignore: cast_nullable_to_non_nullable
              as int?,
      townId: freezed == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as int?,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayMethodEntityCopyWith<$Res>? get payMethod {
    if (_value.payMethod == null) {
      return null;
    }

    return $PayMethodEntityCopyWith<$Res>(_value.payMethod!, (value) {
      return _then(_value.copyWith(payMethod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PartnerCopyWith<$Res>? get partner {
    if (_value.partner == null) {
      return null;
    }

    return $PartnerCopyWith<$Res>(_value.partner!, (value) {
      return _then(_value.copyWith(partner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderEntityImplCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$$OrderEntityImplCopyWith(
          _$OrderEntityImpl value, $Res Function(_$OrderEntityImpl) then) =
      __$$OrderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String startPoint,
      String endPoint,
      String routeType,
      int price,
      String? comment,
      String? status,
      bool hasRoute,
      String createdAt,
      @JsonKey(name: 'pay_method') PayMethodEntity? payMethod,
      String phone,
      Partner? partner,
      int? waitingTime,
      int? townId,
      List<PointEntity> points});

  @override
  $PayMethodEntityCopyWith<$Res>? get payMethod;
  @override
  $PartnerCopyWith<$Res>? get partner;
}

/// @nodoc
class __$$OrderEntityImplCopyWithImpl<$Res>
    extends _$OrderEntityCopyWithImpl<$Res, _$OrderEntityImpl>
    implements _$$OrderEntityImplCopyWith<$Res> {
  __$$OrderEntityImplCopyWithImpl(
      _$OrderEntityImpl _value, $Res Function(_$OrderEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startPoint = null,
    Object? endPoint = null,
    Object? routeType = null,
    Object? price = null,
    Object? comment = freezed,
    Object? status = freezed,
    Object? hasRoute = null,
    Object? createdAt = null,
    Object? payMethod = freezed,
    Object? phone = null,
    Object? partner = freezed,
    Object? waitingTime = freezed,
    Object? townId = freezed,
    Object? points = null,
  }) {
    return _then(_$OrderEntityImpl(
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
      routeType: null == routeType
          ? _value.routeType
          : routeType // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      hasRoute: null == hasRoute
          ? _value.hasRoute
          : hasRoute // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      payMethod: freezed == payMethod
          ? _value.payMethod
          : payMethod // ignore: cast_nullable_to_non_nullable
              as PayMethodEntity?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as Partner?,
      waitingTime: freezed == waitingTime
          ? _value.waitingTime
          : waitingTime // ignore: cast_nullable_to_non_nullable
              as int?,
      townId: freezed == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as int?,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderEntityImpl implements _OrderEntity {
  const _$OrderEntityImpl(
      {this.id = 0,
      this.startPoint = '',
      this.endPoint = '',
      this.routeType = '',
      this.price = 0,
      this.comment,
      this.status,
      this.hasRoute = false,
      this.createdAt = '',
      @JsonKey(name: 'pay_method') this.payMethod,
      this.phone = '',
      this.partner,
      this.waitingTime,
      this.townId,
      final List<PointEntity> points = const []})
      : _points = points;

  factory _$OrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderEntityImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String startPoint;
  @override
  @JsonKey()
  final String endPoint;
  @override
  @JsonKey()
  final String routeType;
  @override
  @JsonKey()
  final int price;
  @override
  final String? comment;
  @override
  final String? status;
  @override
  @JsonKey()
  final bool hasRoute;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey(name: 'pay_method')
  final PayMethodEntity? payMethod;
  @override
  @JsonKey()
  final String phone;
  @override
  final Partner? partner;
  @override
  final int? waitingTime;
  @override
  final int? townId;
  final List<PointEntity> _points;
  @override
  @JsonKey()
  List<PointEntity> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'OrderEntity(id: $id, startPoint: $startPoint, endPoint: $endPoint, routeType: $routeType, price: $price, comment: $comment, status: $status, hasRoute: $hasRoute, createdAt: $createdAt, payMethod: $payMethod, phone: $phone, partner: $partner, waitingTime: $waitingTime, townId: $townId, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startPoint, startPoint) ||
                other.startPoint == startPoint) &&
            (identical(other.endPoint, endPoint) ||
                other.endPoint == endPoint) &&
            (identical(other.routeType, routeType) ||
                other.routeType == routeType) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hasRoute, hasRoute) ||
                other.hasRoute == hasRoute) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.payMethod, payMethod) ||
                other.payMethod == payMethod) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.partner, partner) || other.partner == partner) &&
            (identical(other.waitingTime, waitingTime) ||
                other.waitingTime == waitingTime) &&
            (identical(other.townId, townId) || other.townId == townId) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      startPoint,
      endPoint,
      routeType,
      price,
      comment,
      status,
      hasRoute,
      createdAt,
      payMethod,
      phone,
      partner,
      waitingTime,
      townId,
      const DeepCollectionEquality().hash(_points));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      __$$OrderEntityImplCopyWithImpl<_$OrderEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderEntityImplToJson(
      this,
    );
  }
}

abstract class _OrderEntity implements OrderEntity {
  const factory _OrderEntity(
      {final int id,
      final String startPoint,
      final String endPoint,
      final String routeType,
      final int price,
      final String? comment,
      final String? status,
      final bool hasRoute,
      final String createdAt,
      @JsonKey(name: 'pay_method') final PayMethodEntity? payMethod,
      final String phone,
      final Partner? partner,
      final int? waitingTime,
      final int? townId,
      final List<PointEntity> points}) = _$OrderEntityImpl;

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$OrderEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get startPoint;
  @override
  String get endPoint;
  @override
  String get routeType;
  @override
  int get price;
  @override
  String? get comment;
  @override
  String? get status;
  @override
  bool get hasRoute;
  @override
  String get createdAt;
  @override
  @JsonKey(name: 'pay_method')
  PayMethodEntity? get payMethod;
  @override
  String get phone;
  @override
  Partner? get partner;
  @override
  int? get waitingTime;
  @override
  int? get townId;
  @override
  List<PointEntity> get points;
  @override
  @JsonKey(ignore: true)
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
