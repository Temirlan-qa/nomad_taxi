// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promocode_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromocodeEntity _$PromocodeEntityFromJson(Map<String, dynamic> json) {
  return _PromocodeEntity.fromJson(json);
}

/// @nodoc
mixin _$PromocodeEntity {
  int get amount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromocodeEntityCopyWith<PromocodeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromocodeEntityCopyWith<$Res> {
  factory $PromocodeEntityCopyWith(
          PromocodeEntity value, $Res Function(PromocodeEntity) then) =
      _$PromocodeEntityCopyWithImpl<$Res, PromocodeEntity>;
  @useResult
  $Res call({int amount, String description});
}

/// @nodoc
class _$PromocodeEntityCopyWithImpl<$Res, $Val extends PromocodeEntity>
    implements $PromocodeEntityCopyWith<$Res> {
  _$PromocodeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromocodeEntityImplCopyWith<$Res>
    implements $PromocodeEntityCopyWith<$Res> {
  factory _$$PromocodeEntityImplCopyWith(_$PromocodeEntityImpl value,
          $Res Function(_$PromocodeEntityImpl) then) =
      __$$PromocodeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amount, String description});
}

/// @nodoc
class __$$PromocodeEntityImplCopyWithImpl<$Res>
    extends _$PromocodeEntityCopyWithImpl<$Res, _$PromocodeEntityImpl>
    implements _$$PromocodeEntityImplCopyWith<$Res> {
  __$$PromocodeEntityImplCopyWithImpl(
      _$PromocodeEntityImpl _value, $Res Function(_$PromocodeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? description = null,
  }) {
    return _then(_$PromocodeEntityImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromocodeEntityImpl implements _PromocodeEntity {
  const _$PromocodeEntityImpl(
      {required this.amount, required this.description});

  factory _$PromocodeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromocodeEntityImplFromJson(json);

  @override
  final int amount;
  @override
  final String description;

  @override
  String toString() {
    return 'PromocodeEntity(amount: $amount, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromocodeEntityImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromocodeEntityImplCopyWith<_$PromocodeEntityImpl> get copyWith =>
      __$$PromocodeEntityImplCopyWithImpl<_$PromocodeEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromocodeEntityImplToJson(
      this,
    );
  }
}

abstract class _PromocodeEntity implements PromocodeEntity {
  const factory _PromocodeEntity(
      {required final int amount,
      required final String description}) = _$PromocodeEntityImpl;

  factory _PromocodeEntity.fromJson(Map<String, dynamic> json) =
      _$PromocodeEntityImpl.fromJson;

  @override
  int get amount;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$PromocodeEntityImplCopyWith<_$PromocodeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
