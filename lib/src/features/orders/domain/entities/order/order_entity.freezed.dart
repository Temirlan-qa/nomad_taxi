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
  String get id => throw _privateConstructorUsedError;
  String get startPoint => throw _privateConstructorUsedError;
  String get endPoint => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get hasRoute => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  PayMethodEntity get payMethod => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  int get townId => throw _privateConstructorUsedError;
  List<dynamic> get points => throw _privateConstructorUsedError;

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
      {String id,
      String startPoint,
      String endPoint,
      int price,
      String? comment,
      String status,
      bool hasRoute,
      String createdAt,
      PayMethodEntity payMethod,
      String phone,
      int townId,
      List<dynamic> points});

  $PayMethodEntityCopyWith<$Res> get payMethod;
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
    Object? price = null,
    Object? comment = freezed,
    Object? status = null,
    Object? hasRoute = null,
    Object? createdAt = null,
    Object? payMethod = null,
    Object? phone = null,
    Object? townId = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      payMethod: null == payMethod
          ? _value.payMethod
          : payMethod // ignore: cast_nullable_to_non_nullable
              as PayMethodEntity,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      townId: null == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayMethodEntityCopyWith<$Res> get payMethod {
    return $PayMethodEntityCopyWith<$Res>(_value.payMethod, (value) {
      return _then(_value.copyWith(payMethod: value) as $Val);
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
      {String id,
      String startPoint,
      String endPoint,
      int price,
      String? comment,
      String status,
      bool hasRoute,
      String createdAt,
      PayMethodEntity payMethod,
      String phone,
      int townId,
      List<dynamic> points});

  @override
  $PayMethodEntityCopyWith<$Res> get payMethod;
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
    Object? price = null,
    Object? comment = freezed,
    Object? status = null,
    Object? hasRoute = null,
    Object? createdAt = null,
    Object? payMethod = null,
    Object? phone = null,
    Object? townId = null,
    Object? points = null,
  }) {
    return _then(_$OrderEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      payMethod: null == payMethod
          ? _value.payMethod
          : payMethod // ignore: cast_nullable_to_non_nullable
              as PayMethodEntity,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      townId: null == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderEntityImpl implements _OrderEntity {
  const _$OrderEntityImpl(
      {required this.id,
      required this.startPoint,
      required this.endPoint,
      required this.price,
      this.comment,
      required this.status,
      required this.hasRoute,
      required this.createdAt,
      required this.payMethod,
      required this.phone,
      required this.townId,
      required final List<dynamic> points})
      : _points = points;

  factory _$OrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String startPoint;
  @override
  final String endPoint;
  @override
  final int price;
  @override
  final String? comment;
  @override
  final String status;
  @override
  final bool hasRoute;
  @override
  final String createdAt;
  @override
  final PayMethodEntity payMethod;
  @override
  final String phone;
  @override
  final int townId;
  final List<dynamic> _points;
  @override
  List<dynamic> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'OrderEntity(id: $id, startPoint: $startPoint, endPoint: $endPoint, price: $price, comment: $comment, status: $status, hasRoute: $hasRoute, createdAt: $createdAt, payMethod: $payMethod, phone: $phone, townId: $townId, points: $points)';
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
      price,
      comment,
      status,
      hasRoute,
      createdAt,
      payMethod,
      phone,
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
      {required final String id,
      required final String startPoint,
      required final String endPoint,
      required final int price,
      final String? comment,
      required final String status,
      required final bool hasRoute,
      required final String createdAt,
      required final PayMethodEntity payMethod,
      required final String phone,
      required final int townId,
      required final List<dynamic> points}) = _$OrderEntityImpl;

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$OrderEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get startPoint;
  @override
  String get endPoint;
  @override
  int get price;
  @override
  String? get comment;
  @override
  String get status;
  @override
  bool get hasRoute;
  @override
  String get createdAt;
  @override
  PayMethodEntity get payMethod;
  @override
  String get phone;
  @override
  int get townId;
  @override
  List<dynamic> get points;
  @override
  @JsonKey(ignore: true)
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
