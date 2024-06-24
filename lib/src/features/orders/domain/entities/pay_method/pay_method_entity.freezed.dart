// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_method_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PayMethodEntity _$PayMethodEntityFromJson(Map<String, dynamic> json) {
  return _PayMethodEntity.fromJson(json);
}

/// @nodoc
mixin _$PayMethodEntity {
  int get byCash => throw _privateConstructorUsedError;
  int get byBonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayMethodEntityCopyWith<PayMethodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayMethodEntityCopyWith<$Res> {
  factory $PayMethodEntityCopyWith(
          PayMethodEntity value, $Res Function(PayMethodEntity) then) =
      _$PayMethodEntityCopyWithImpl<$Res, PayMethodEntity>;
  @useResult
  $Res call({int byCash, int byBonus});
}

/// @nodoc
class _$PayMethodEntityCopyWithImpl<$Res, $Val extends PayMethodEntity>
    implements $PayMethodEntityCopyWith<$Res> {
  _$PayMethodEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byCash = null,
    Object? byBonus = null,
  }) {
    return _then(_value.copyWith(
      byCash: null == byCash
          ? _value.byCash
          : byCash // ignore: cast_nullable_to_non_nullable
              as int,
      byBonus: null == byBonus
          ? _value.byBonus
          : byBonus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayMethodEntityImplCopyWith<$Res>
    implements $PayMethodEntityCopyWith<$Res> {
  factory _$$PayMethodEntityImplCopyWith(_$PayMethodEntityImpl value,
          $Res Function(_$PayMethodEntityImpl) then) =
      __$$PayMethodEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int byCash, int byBonus});
}

/// @nodoc
class __$$PayMethodEntityImplCopyWithImpl<$Res>
    extends _$PayMethodEntityCopyWithImpl<$Res, _$PayMethodEntityImpl>
    implements _$$PayMethodEntityImplCopyWith<$Res> {
  __$$PayMethodEntityImplCopyWithImpl(
      _$PayMethodEntityImpl _value, $Res Function(_$PayMethodEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byCash = null,
    Object? byBonus = null,
  }) {
    return _then(_$PayMethodEntityImpl(
      byCash: null == byCash
          ? _value.byCash
          : byCash // ignore: cast_nullable_to_non_nullable
              as int,
      byBonus: null == byBonus
          ? _value.byBonus
          : byBonus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayMethodEntityImpl implements _PayMethodEntity {
  const _$PayMethodEntityImpl({this.byCash = 0, this.byBonus = 0});

  factory _$PayMethodEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayMethodEntityImplFromJson(json);

  @override
  @JsonKey()
  final int byCash;
  @override
  @JsonKey()
  final int byBonus;

  @override
  String toString() {
    return 'PayMethodEntity(byCash: $byCash, byBonus: $byBonus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayMethodEntityImpl &&
            (identical(other.byCash, byCash) || other.byCash == byCash) &&
            (identical(other.byBonus, byBonus) || other.byBonus == byBonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, byCash, byBonus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayMethodEntityImplCopyWith<_$PayMethodEntityImpl> get copyWith =>
      __$$PayMethodEntityImplCopyWithImpl<_$PayMethodEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayMethodEntityImplToJson(
      this,
    );
  }
}

abstract class _PayMethodEntity implements PayMethodEntity {
  const factory _PayMethodEntity({final int byCash, final int byBonus}) =
      _$PayMethodEntityImpl;

  factory _PayMethodEntity.fromJson(Map<String, dynamic> json) =
      _$PayMethodEntityImpl.fromJson;

  @override
  int get byCash;
  @override
  int get byBonus;
  @override
  @JsonKey(ignore: true)
  _$$PayMethodEntityImplCopyWith<_$PayMethodEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
