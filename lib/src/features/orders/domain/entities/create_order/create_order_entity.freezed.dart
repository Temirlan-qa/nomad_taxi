// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateOrderEntity _$CreateOrderEntityFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _CreateOrderEntity.fromJson(json);
    case 'empty':
      return _CreateOrderEntityEmpty.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CreateOrderEntity',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CreateOrderEntity {
  int get townId => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  List<PointEntity> get points => throw _privateConstructorUsedError;
  int get useBonus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int townId, int price, List<PointEntity> points, int useBonus)
        $default, {
    required TResult Function(
            int townId, int price, List<PointEntity> points, int useBonus)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int townId, int price, List<PointEntity> points, int useBonus)?
        $default, {
    TResult? Function(
            int townId, int price, List<PointEntity> points, int useBonus)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int townId, int price, List<PointEntity> points, int useBonus)?
        $default, {
    TResult Function(
            int townId, int price, List<PointEntity> points, int useBonus)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreateOrderEntity value) $default, {
    required TResult Function(_CreateOrderEntityEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CreateOrderEntity value)? $default, {
    TResult? Function(_CreateOrderEntityEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreateOrderEntity value)? $default, {
    TResult Function(_CreateOrderEntityEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderEntityCopyWith<CreateOrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderEntityCopyWith<$Res> {
  factory $CreateOrderEntityCopyWith(
          CreateOrderEntity value, $Res Function(CreateOrderEntity) then) =
      _$CreateOrderEntityCopyWithImpl<$Res, CreateOrderEntity>;
  @useResult
  $Res call({int townId, int price, List<PointEntity> points, int useBonus});
}

/// @nodoc
class _$CreateOrderEntityCopyWithImpl<$Res, $Val extends CreateOrderEntity>
    implements $CreateOrderEntityCopyWith<$Res> {
  _$CreateOrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? townId = null,
    Object? price = null,
    Object? points = null,
    Object? useBonus = null,
  }) {
    return _then(_value.copyWith(
      townId: null == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointEntity>,
      useBonus: null == useBonus
          ? _value.useBonus
          : useBonus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateOrderEntityImplCopyWith<$Res>
    implements $CreateOrderEntityCopyWith<$Res> {
  factory _$$CreateOrderEntityImplCopyWith(_$CreateOrderEntityImpl value,
          $Res Function(_$CreateOrderEntityImpl) then) =
      __$$CreateOrderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int townId, int price, List<PointEntity> points, int useBonus});
}

/// @nodoc
class __$$CreateOrderEntityImplCopyWithImpl<$Res>
    extends _$CreateOrderEntityCopyWithImpl<$Res, _$CreateOrderEntityImpl>
    implements _$$CreateOrderEntityImplCopyWith<$Res> {
  __$$CreateOrderEntityImplCopyWithImpl(_$CreateOrderEntityImpl _value,
      $Res Function(_$CreateOrderEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? townId = null,
    Object? price = null,
    Object? points = null,
    Object? useBonus = null,
  }) {
    return _then(_$CreateOrderEntityImpl(
      townId: null == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointEntity>,
      useBonus: null == useBonus
          ? _value.useBonus
          : useBonus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateOrderEntityImpl implements _CreateOrderEntity {
  const _$CreateOrderEntityImpl(
      {required this.townId,
      required this.price,
      required final List<PointEntity> points,
      required this.useBonus,
      final String? $type})
      : _points = points,
        $type = $type ?? 'default';

  factory _$CreateOrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateOrderEntityImplFromJson(json);

  @override
  final int townId;
  @override
  final int price;
  final List<PointEntity> _points;
  @override
  List<PointEntity> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  final int useBonus;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CreateOrderEntity(townId: $townId, price: $price, points: $points, useBonus: $useBonus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderEntityImpl &&
            (identical(other.townId, townId) || other.townId == townId) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.useBonus, useBonus) ||
                other.useBonus == useBonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, townId, price,
      const DeepCollectionEquality().hash(_points), useBonus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderEntityImplCopyWith<_$CreateOrderEntityImpl> get copyWith =>
      __$$CreateOrderEntityImplCopyWithImpl<_$CreateOrderEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int townId, int price, List<PointEntity> points, int useBonus)
        $default, {
    required TResult Function(
            int townId, int price, List<PointEntity> points, int useBonus)
        empty,
  }) {
    return $default(townId, price, points, useBonus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int townId, int price, List<PointEntity> points, int useBonus)?
        $default, {
    TResult? Function(
            int townId, int price, List<PointEntity> points, int useBonus)?
        empty,
  }) {
    return $default?.call(townId, price, points, useBonus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int townId, int price, List<PointEntity> points, int useBonus)?
        $default, {
    TResult Function(
            int townId, int price, List<PointEntity> points, int useBonus)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(townId, price, points, useBonus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreateOrderEntity value) $default, {
    required TResult Function(_CreateOrderEntityEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CreateOrderEntity value)? $default, {
    TResult? Function(_CreateOrderEntityEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreateOrderEntity value)? $default, {
    TResult Function(_CreateOrderEntityEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrderEntityImplToJson(
      this,
    );
  }
}

abstract class _CreateOrderEntity implements CreateOrderEntity {
  const factory _CreateOrderEntity(
      {required final int townId,
      required final int price,
      required final List<PointEntity> points,
      required final int useBonus}) = _$CreateOrderEntityImpl;

  factory _CreateOrderEntity.fromJson(Map<String, dynamic> json) =
      _$CreateOrderEntityImpl.fromJson;

  @override
  int get townId;
  @override
  int get price;
  @override
  List<PointEntity> get points;
  @override
  int get useBonus;
  @override
  @JsonKey(ignore: true)
  _$$CreateOrderEntityImplCopyWith<_$CreateOrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateOrderEntityEmptyImplCopyWith<$Res>
    implements $CreateOrderEntityCopyWith<$Res> {
  factory _$$CreateOrderEntityEmptyImplCopyWith(
          _$CreateOrderEntityEmptyImpl value,
          $Res Function(_$CreateOrderEntityEmptyImpl) then) =
      __$$CreateOrderEntityEmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int townId, int price, List<PointEntity> points, int useBonus});
}

/// @nodoc
class __$$CreateOrderEntityEmptyImplCopyWithImpl<$Res>
    extends _$CreateOrderEntityCopyWithImpl<$Res, _$CreateOrderEntityEmptyImpl>
    implements _$$CreateOrderEntityEmptyImplCopyWith<$Res> {
  __$$CreateOrderEntityEmptyImplCopyWithImpl(
      _$CreateOrderEntityEmptyImpl _value,
      $Res Function(_$CreateOrderEntityEmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? townId = null,
    Object? price = null,
    Object? points = null,
    Object? useBonus = null,
  }) {
    return _then(_$CreateOrderEntityEmptyImpl(
      townId: null == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointEntity>,
      useBonus: null == useBonus
          ? _value.useBonus
          : useBonus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateOrderEntityEmptyImpl implements _CreateOrderEntityEmpty {
  _$CreateOrderEntityEmptyImpl(
      {this.townId = 8,
      this.price = 1022,
      final List<PointEntity> points = const [
        PointEntity(lat: 42.2222, lng: 77.2222, title: 'Bay'),
        PointEntity(lat: 32.3333, lng: 66.3333, title: 'Abay')
      ],
      this.useBonus = 1,
      final String? $type})
      : _points = points,
        $type = $type ?? 'empty';

  factory _$CreateOrderEntityEmptyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateOrderEntityEmptyImplFromJson(json);

  @override
  @JsonKey()
  final int townId;
  @override
  @JsonKey()
  final int price;
  final List<PointEntity> _points;
  @override
  @JsonKey()
  List<PointEntity> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  @JsonKey()
  final int useBonus;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CreateOrderEntity.empty(townId: $townId, price: $price, points: $points, useBonus: $useBonus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderEntityEmptyImpl &&
            (identical(other.townId, townId) || other.townId == townId) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.useBonus, useBonus) ||
                other.useBonus == useBonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, townId, price,
      const DeepCollectionEquality().hash(_points), useBonus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderEntityEmptyImplCopyWith<_$CreateOrderEntityEmptyImpl>
      get copyWith => __$$CreateOrderEntityEmptyImplCopyWithImpl<
          _$CreateOrderEntityEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int townId, int price, List<PointEntity> points, int useBonus)
        $default, {
    required TResult Function(
            int townId, int price, List<PointEntity> points, int useBonus)
        empty,
  }) {
    return empty(townId, price, points, useBonus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int townId, int price, List<PointEntity> points, int useBonus)?
        $default, {
    TResult? Function(
            int townId, int price, List<PointEntity> points, int useBonus)?
        empty,
  }) {
    return empty?.call(townId, price, points, useBonus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int townId, int price, List<PointEntity> points, int useBonus)?
        $default, {
    TResult Function(
            int townId, int price, List<PointEntity> points, int useBonus)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(townId, price, points, useBonus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreateOrderEntity value) $default, {
    required TResult Function(_CreateOrderEntityEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CreateOrderEntity value)? $default, {
    TResult? Function(_CreateOrderEntityEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreateOrderEntity value)? $default, {
    TResult Function(_CreateOrderEntityEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrderEntityEmptyImplToJson(
      this,
    );
  }
}

abstract class _CreateOrderEntityEmpty implements CreateOrderEntity {
  factory _CreateOrderEntityEmpty(
      {final int townId,
      final int price,
      final List<PointEntity> points,
      final int useBonus}) = _$CreateOrderEntityEmptyImpl;

  factory _CreateOrderEntityEmpty.fromJson(Map<String, dynamic> json) =
      _$CreateOrderEntityEmptyImpl.fromJson;

  @override
  int get townId;
  @override
  int get price;
  @override
  List<PointEntity> get points;
  @override
  int get useBonus;
  @override
  @JsonKey(ignore: true)
  _$$CreateOrderEntityEmptyImplCopyWith<_$CreateOrderEntityEmptyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
