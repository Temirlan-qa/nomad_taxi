// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateOrderEntity _$UpdateOrderEntityFromJson(Map<String, dynamic> json) {
  return _UpdateOrderEntity.fromJson(json);
}

/// @nodoc
mixin _$UpdateOrderEntity {
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateOrderEntityCopyWith<UpdateOrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrderEntityCopyWith<$Res> {
  factory $UpdateOrderEntityCopyWith(
          UpdateOrderEntity value, $Res Function(UpdateOrderEntity) then) =
      _$UpdateOrderEntityCopyWithImpl<$Res, UpdateOrderEntity>;
  @useResult
  $Res call({int price});
}

/// @nodoc
class _$UpdateOrderEntityCopyWithImpl<$Res, $Val extends UpdateOrderEntity>
    implements $UpdateOrderEntityCopyWith<$Res> {
  _$UpdateOrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateOrderEntityImplCopyWith<$Res>
    implements $UpdateOrderEntityCopyWith<$Res> {
  factory _$$UpdateOrderEntityImplCopyWith(_$UpdateOrderEntityImpl value,
          $Res Function(_$UpdateOrderEntityImpl) then) =
      __$$UpdateOrderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int price});
}

/// @nodoc
class __$$UpdateOrderEntityImplCopyWithImpl<$Res>
    extends _$UpdateOrderEntityCopyWithImpl<$Res, _$UpdateOrderEntityImpl>
    implements _$$UpdateOrderEntityImplCopyWith<$Res> {
  __$$UpdateOrderEntityImplCopyWithImpl(_$UpdateOrderEntityImpl _value,
      $Res Function(_$UpdateOrderEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$UpdateOrderEntityImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateOrderEntityImpl implements _UpdateOrderEntity {
  const _$UpdateOrderEntityImpl({required this.price});

  factory _$UpdateOrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateOrderEntityImplFromJson(json);

  @override
  final int price;

  @override
  String toString() {
    return 'UpdateOrderEntity(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderEntityImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderEntityImplCopyWith<_$UpdateOrderEntityImpl> get copyWith =>
      __$$UpdateOrderEntityImplCopyWithImpl<_$UpdateOrderEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateOrderEntityImplToJson(
      this,
    );
  }
}

abstract class _UpdateOrderEntity implements UpdateOrderEntity {
  const factory _UpdateOrderEntity({required final int price}) =
      _$UpdateOrderEntityImpl;

  factory _UpdateOrderEntity.fromJson(Map<String, dynamic> json) =
      _$UpdateOrderEntityImpl.fromJson;

  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$UpdateOrderEntityImplCopyWith<_$UpdateOrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
