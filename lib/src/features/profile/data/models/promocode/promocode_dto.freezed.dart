// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promocode_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromocodeDto _$PromocodeDtoFromJson(Map<String, dynamic> json) {
  return _PromocodeDto.fromJson(json);
}

/// @nodoc
mixin _$PromocodeDto {
  int get amount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromocodeDtoCopyWith<PromocodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromocodeDtoCopyWith<$Res> {
  factory $PromocodeDtoCopyWith(
          PromocodeDto value, $Res Function(PromocodeDto) then) =
      _$PromocodeDtoCopyWithImpl<$Res, PromocodeDto>;
  @useResult
  $Res call({int amount, String description});
}

/// @nodoc
class _$PromocodeDtoCopyWithImpl<$Res, $Val extends PromocodeDto>
    implements $PromocodeDtoCopyWith<$Res> {
  _$PromocodeDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$PromocodeDtoImplCopyWith<$Res>
    implements $PromocodeDtoCopyWith<$Res> {
  factory _$$PromocodeDtoImplCopyWith(
          _$PromocodeDtoImpl value, $Res Function(_$PromocodeDtoImpl) then) =
      __$$PromocodeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amount, String description});
}

/// @nodoc
class __$$PromocodeDtoImplCopyWithImpl<$Res>
    extends _$PromocodeDtoCopyWithImpl<$Res, _$PromocodeDtoImpl>
    implements _$$PromocodeDtoImplCopyWith<$Res> {
  __$$PromocodeDtoImplCopyWithImpl(
      _$PromocodeDtoImpl _value, $Res Function(_$PromocodeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? description = null,
  }) {
    return _then(_$PromocodeDtoImpl(
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
class _$PromocodeDtoImpl implements _PromocodeDto {
  const _$PromocodeDtoImpl({required this.amount, required this.description});

  factory _$PromocodeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromocodeDtoImplFromJson(json);

  @override
  final int amount;
  @override
  final String description;

  @override
  String toString() {
    return 'PromocodeDto(amount: $amount, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromocodeDtoImpl &&
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
  _$$PromocodeDtoImplCopyWith<_$PromocodeDtoImpl> get copyWith =>
      __$$PromocodeDtoImplCopyWithImpl<_$PromocodeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromocodeDtoImplToJson(
      this,
    );
  }
}

abstract class _PromocodeDto implements PromocodeDto {
  const factory _PromocodeDto(
      {required final int amount,
      required final String description}) = _$PromocodeDtoImpl;

  factory _PromocodeDto.fromJson(Map<String, dynamic> json) =
      _$PromocodeDtoImpl.fromJson;

  @override
  int get amount;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$PromocodeDtoImplCopyWith<_$PromocodeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
