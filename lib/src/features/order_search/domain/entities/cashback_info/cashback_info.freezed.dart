// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cashback_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CashbackInfo _$CashbackInfoFromJson(Map<String, dynamic> json) {
  return _CashbackInfo.fromJson(json);
}

/// @nodoc
mixin _$CashbackInfo {
  int get id => throw _privateConstructorUsedError;
  int get cashback => throw _privateConstructorUsedError;
  @JsonKey(name: "max_amount")
  int get maxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "expires_at")
  String get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashbackInfoCopyWith<CashbackInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashbackInfoCopyWith<$Res> {
  factory $CashbackInfoCopyWith(
          CashbackInfo value, $Res Function(CashbackInfo) then) =
      _$CashbackInfoCopyWithImpl<$Res, CashbackInfo>;
  @useResult
  $Res call(
      {int id,
      int cashback,
      @JsonKey(name: "max_amount") int maxAmount,
      @JsonKey(name: "expires_at") String expiresAt});
}

/// @nodoc
class _$CashbackInfoCopyWithImpl<$Res, $Val extends CashbackInfo>
    implements $CashbackInfoCopyWith<$Res> {
  _$CashbackInfoCopyWithImpl(this._value, this._then);

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
abstract class _$$CashbackInfoImplCopyWith<$Res>
    implements $CashbackInfoCopyWith<$Res> {
  factory _$$CashbackInfoImplCopyWith(
          _$CashbackInfoImpl value, $Res Function(_$CashbackInfoImpl) then) =
      __$$CashbackInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int cashback,
      @JsonKey(name: "max_amount") int maxAmount,
      @JsonKey(name: "expires_at") String expiresAt});
}

/// @nodoc
class __$$CashbackInfoImplCopyWithImpl<$Res>
    extends _$CashbackInfoCopyWithImpl<$Res, _$CashbackInfoImpl>
    implements _$$CashbackInfoImplCopyWith<$Res> {
  __$$CashbackInfoImplCopyWithImpl(
      _$CashbackInfoImpl _value, $Res Function(_$CashbackInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cashback = null,
    Object? maxAmount = null,
    Object? expiresAt = null,
  }) {
    return _then(_$CashbackInfoImpl(
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
class _$CashbackInfoImpl implements _CashbackInfo {
  const _$CashbackInfoImpl(
      {required this.id,
      required this.cashback,
      @JsonKey(name: "max_amount") required this.maxAmount,
      @JsonKey(name: "expires_at") required this.expiresAt});

  factory _$CashbackInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CashbackInfoImplFromJson(json);

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
    return 'CashbackInfo(id: $id, cashback: $cashback, maxAmount: $maxAmount, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashbackInfoImpl &&
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
  _$$CashbackInfoImplCopyWith<_$CashbackInfoImpl> get copyWith =>
      __$$CashbackInfoImplCopyWithImpl<_$CashbackInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CashbackInfoImplToJson(
      this,
    );
  }
}

abstract class _CashbackInfo implements CashbackInfo {
  const factory _CashbackInfo(
          {required final int id,
          required final int cashback,
          @JsonKey(name: "max_amount") required final int maxAmount,
          @JsonKey(name: "expires_at") required final String expiresAt}) =
      _$CashbackInfoImpl;

  factory _CashbackInfo.fromJson(Map<String, dynamic> json) =
      _$CashbackInfoImpl.fromJson;

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
  _$$CashbackInfoImplCopyWith<_$CashbackInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
