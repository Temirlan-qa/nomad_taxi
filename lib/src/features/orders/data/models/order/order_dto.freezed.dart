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
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_point')
  String get startPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_point')
  String get endPoint => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_route')
  bool get hasRoute => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_method')
  PayMethodDto? get payMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'waiting_time')
  int? get waitingTime => throw _privateConstructorUsedError;
  PartnerDto? get partner => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'town_id')
  int? get townId => throw _privateConstructorUsedError;
  List<PointDto> get points => throw _privateConstructorUsedError;

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
      {int? id,
      @JsonKey(name: 'start_point') String startPoint,
      @JsonKey(name: 'end_point') String endPoint,
      int? price,
      String? comment,
      String? status,
      String? type,
      @JsonKey(name: 'has_route') bool hasRoute,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'pay_method') PayMethodDto? payMethod,
      @JsonKey(name: 'waiting_time') int? waitingTime,
      PartnerDto? partner,
      String phone,
      @JsonKey(name: 'town_id') int? townId,
      List<PointDto> points});

  $PayMethodDtoCopyWith<$Res>? get payMethod;
  $PartnerDtoCopyWith<$Res>? get partner;
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
    Object? id = freezed,
    Object? startPoint = null,
    Object? endPoint = null,
    Object? price = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? hasRoute = null,
    Object? createdAt = null,
    Object? payMethod = freezed,
    Object? waitingTime = freezed,
    Object? partner = freezed,
    Object? phone = null,
    Object? townId = freezed,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as String,
      endPoint: null == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
              as PayMethodDto?,
      waitingTime: freezed == waitingTime
          ? _value.waitingTime
          : waitingTime // ignore: cast_nullable_to_non_nullable
              as int?,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as PartnerDto?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      townId: freezed == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as int?,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayMethodDtoCopyWith<$Res>? get payMethod {
    if (_value.payMethod == null) {
      return null;
    }

    return $PayMethodDtoCopyWith<$Res>(_value.payMethod!, (value) {
      return _then(_value.copyWith(payMethod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PartnerDtoCopyWith<$Res>? get partner {
    if (_value.partner == null) {
      return null;
    }

    return $PartnerDtoCopyWith<$Res>(_value.partner!, (value) {
      return _then(_value.copyWith(partner: value) as $Val);
    });
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
      {int? id,
      @JsonKey(name: 'start_point') String startPoint,
      @JsonKey(name: 'end_point') String endPoint,
      int? price,
      String? comment,
      String? status,
      String? type,
      @JsonKey(name: 'has_route') bool hasRoute,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'pay_method') PayMethodDto? payMethod,
      @JsonKey(name: 'waiting_time') int? waitingTime,
      PartnerDto? partner,
      String phone,
      @JsonKey(name: 'town_id') int? townId,
      List<PointDto> points});

  @override
  $PayMethodDtoCopyWith<$Res>? get payMethod;
  @override
  $PartnerDtoCopyWith<$Res>? get partner;
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
    Object? id = freezed,
    Object? startPoint = null,
    Object? endPoint = null,
    Object? price = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? hasRoute = null,
    Object? createdAt = null,
    Object? payMethod = freezed,
    Object? waitingTime = freezed,
    Object? partner = freezed,
    Object? phone = null,
    Object? townId = freezed,
    Object? points = null,
  }) {
    return _then(_$OrderDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as String,
      endPoint: null == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
              as PayMethodDto?,
      waitingTime: freezed == waitingTime
          ? _value.waitingTime
          : waitingTime // ignore: cast_nullable_to_non_nullable
              as int?,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as PartnerDto?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      townId: freezed == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as int?,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDtoImpl implements _OrderDto {
  const _$OrderDtoImpl(
      {this.id,
      @JsonKey(name: 'start_point') required this.startPoint,
      @JsonKey(name: 'end_point') required this.endPoint,
      this.price,
      this.comment,
      this.status,
      this.type,
      @JsonKey(name: 'has_route') this.hasRoute = false,
      @JsonKey(name: 'created_at') this.createdAt = '',
      @JsonKey(name: 'pay_method') this.payMethod,
      @JsonKey(name: 'waiting_time') this.waitingTime = null,
      this.partner = null,
      this.phone = '',
      @JsonKey(name: 'town_id') this.townId,
      final List<PointDto> points = const []})
      : _points = points;

  factory _$OrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDtoImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'start_point')
  final String startPoint;
  @override
  @JsonKey(name: 'end_point')
  final String endPoint;
  @override
  final int? price;
  @override
  final String? comment;
  @override
  final String? status;
  @override
  final String? type;
  @override
  @JsonKey(name: 'has_route')
  final bool hasRoute;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'pay_method')
  final PayMethodDto? payMethod;
  @override
  @JsonKey(name: 'waiting_time')
  final int? waitingTime;
  @override
  @JsonKey()
  final PartnerDto? partner;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey(name: 'town_id')
  final int? townId;
  final List<PointDto> _points;
  @override
  @JsonKey()
  List<PointDto> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'OrderDto(id: $id, startPoint: $startPoint, endPoint: $endPoint, price: $price, comment: $comment, status: $status, type: $type, hasRoute: $hasRoute, createdAt: $createdAt, payMethod: $payMethod, waitingTime: $waitingTime, partner: $partner, phone: $phone, townId: $townId, points: $points)';
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
            (identical(other.type, type) || other.type == type) &&
            (identical(other.hasRoute, hasRoute) ||
                other.hasRoute == hasRoute) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.payMethod, payMethod) ||
                other.payMethod == payMethod) &&
            (identical(other.waitingTime, waitingTime) ||
                other.waitingTime == waitingTime) &&
            (identical(other.partner, partner) || other.partner == partner) &&
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
      type,
      hasRoute,
      createdAt,
      payMethod,
      waitingTime,
      partner,
      phone,
      townId,
      const DeepCollectionEquality().hash(_points));

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
      {final int? id,
      @JsonKey(name: 'start_point') required final String startPoint,
      @JsonKey(name: 'end_point') required final String endPoint,
      final int? price,
      final String? comment,
      final String? status,
      final String? type,
      @JsonKey(name: 'has_route') final bool hasRoute,
      @JsonKey(name: 'created_at') final String createdAt,
      @JsonKey(name: 'pay_method') final PayMethodDto? payMethod,
      @JsonKey(name: 'waiting_time') final int? waitingTime,
      final PartnerDto? partner,
      final String phone,
      @JsonKey(name: 'town_id') final int? townId,
      final List<PointDto> points}) = _$OrderDtoImpl;

  factory _OrderDto.fromJson(Map<String, dynamic> json) =
      _$OrderDtoImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'start_point')
  String get startPoint;
  @override
  @JsonKey(name: 'end_point')
  String get endPoint;
  @override
  int? get price;
  @override
  String? get comment;
  @override
  String? get status;
  @override
  String? get type;
  @override
  @JsonKey(name: 'has_route')
  bool get hasRoute;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'pay_method')
  PayMethodDto? get payMethod;
  @override
  @JsonKey(name: 'waiting_time')
  int? get waitingTime;
  @override
  PartnerDto? get partner;
  @override
  String get phone;
  @override
  @JsonKey(name: 'town_id')
  int? get townId;
  @override
  List<PointDto> get points;
  @override
  @JsonKey(ignore: true)
  _$$OrderDtoImplCopyWith<_$OrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
