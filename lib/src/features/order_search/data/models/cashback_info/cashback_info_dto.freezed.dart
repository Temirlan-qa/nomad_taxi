// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cashback_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CashbackInfoDto _$CashbackInfoDtoFromJson(Map<String, dynamic> json) {
  return _CashbackInfoDto.fromJson(json);
}

/// @nodoc
mixin _$CashbackInfoDto {
  int get id => throw _privateConstructorUsedError;
  int get cashback => throw _privateConstructorUsedError;
  @JsonKey(name: "max_amount")
  int get maxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "expires_at")
  String get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashbackInfoDtoCopyWith<CashbackInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashbackInfoDtoCopyWith<$Res> {
  factory $CashbackInfoDtoCopyWith(
          CashbackInfoDto value, $Res Function(CashbackInfoDto) then) =
      _$CashbackInfoDtoCopyWithImpl<$Res, CashbackInfoDto>;
  @useResult
  $Res call(
      {int id,
      int cashback,
      @JsonKey(name: "max_amount") int maxAmount,
      @JsonKey(name: "expires_at") String expiresAt});
}

/// @nodoc
class _$CashbackInfoDtoCopyWithImpl<$Res, $Val extends CashbackInfoDto>
    implements $CashbackInfoDtoCopyWith<$Res> {
  _$CashbackInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cashback = null,
    Object? maxAmount = null,
    Object? expiresAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cashback: null == cashback
          ? _value.cashback
          : cashback // ignore: cast_nullable_to_non_nullable
              as int,
      maxAmount: null == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CashbackInfoDtoImplCopyWith<$Res>
    implements $CashbackInfoDtoCopyWith<$Res> {
  factory _$$CashbackInfoDtoImplCopyWith(_$CashbackInfoDtoImpl value,
          $Res Function(_$CashbackInfoDtoImpl) then) =
      __$$CashbackInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int cashback,
      @JsonKey(name: "max_amount") int maxAmount,
      @JsonKey(name: "expires_at") String expiresAt});
}

/// @nodoc
class __$$CashbackInfoDtoImplCopyWithImpl<$Res>
    extends _$CashbackInfoDtoCopyWithImpl<$Res, _$CashbackInfoDtoImpl>
    implements _$$CashbackInfoDtoImplCopyWith<$Res> {
  __$$CashbackInfoDtoImplCopyWithImpl(
      _$CashbackInfoDtoImpl _value, $Res Function(_$CashbackInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cashback = null,
    Object? maxAmount = null,
    Object? expiresAt = null,
  }) {
    return _then(_$CashbackInfoDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cashback: null == cashback
          ? _value.cashback
          : cashback // ignore: cast_nullable_to_non_nullable
              as int,
      maxAmount: null == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CashbackInfoDtoImpl implements _CashbackInfoDto {
  const _$CashbackInfoDtoImpl(
      {required this.id,
      required this.cashback,
      @JsonKey(name: "max_amount") required this.maxAmount,
      @JsonKey(name: "expires_at") required this.expiresAt});

  factory _$CashbackInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CashbackInfoDtoImplFromJson(json);

  @override
  final int id;
  @override
  final int cashback;
  @override
  @JsonKey(name: "max_amount")
  final int maxAmount;
  @override
  @JsonKey(name: "expires_at")
  final String expiresAt;

  @override
  String toString() {
    return 'CashbackInfoDto(id: $id, cashback: $cashback, maxAmount: $maxAmount, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashbackInfoDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cashback, cashback) ||
                other.cashback == cashback) &&
            (identical(other.maxAmount, maxAmount) ||
                other.maxAmount == maxAmount) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, cashback, maxAmount, expiresAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CashbackInfoDtoImplCopyWith<_$CashbackInfoDtoImpl> get copyWith =>
      __$$CashbackInfoDtoImplCopyWithImpl<_$CashbackInfoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CashbackInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _CashbackInfoDto implements CashbackInfoDto {
  const factory _CashbackInfoDto(
          {required final int id,
          required final int cashback,
          @JsonKey(name: "max_amount") required final int maxAmount,
          @JsonKey(name: "expires_at") required final String expiresAt}) =
      _$CashbackInfoDtoImpl;

  factory _CashbackInfoDto.fromJson(Map<String, dynamic> json) =
      _$CashbackInfoDtoImpl.fromJson;

  @override
  int get id;
  @override
  int get cashback;
  @override
  @JsonKey(name: "max_amount")
  int get maxAmount;
  @override
  @JsonKey(name: "expires_at")
  String get expiresAt;
  @override
  @JsonKey(ignore: true)
  _$$CashbackInfoDtoImplCopyWith<_$CashbackInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
