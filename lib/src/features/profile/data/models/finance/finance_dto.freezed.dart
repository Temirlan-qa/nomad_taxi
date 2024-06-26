// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FinanceDto _$FinanceDtoFromJson(Map<String, dynamic> json) {
  return _FinanceDto.fromJson(json);
}

/// @nodoc
mixin _$FinanceDto {
  int get balance => throw _privateConstructorUsedError;
  int get bonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinanceDtoCopyWith<FinanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceDtoCopyWith<$Res> {
  factory $FinanceDtoCopyWith(
          FinanceDto value, $Res Function(FinanceDto) then) =
      _$FinanceDtoCopyWithImpl<$Res, FinanceDto>;
  @useResult
  $Res call({int balance, int bonus});
}

/// @nodoc
class _$FinanceDtoCopyWithImpl<$Res, $Val extends FinanceDto>
    implements $FinanceDtoCopyWith<$Res> {
  _$FinanceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? bonus = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinanceDtoImplCopyWith<$Res>
    implements $FinanceDtoCopyWith<$Res> {
  factory _$$FinanceDtoImplCopyWith(
          _$FinanceDtoImpl value, $Res Function(_$FinanceDtoImpl) then) =
      __$$FinanceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int balance, int bonus});
}

/// @nodoc
class __$$FinanceDtoImplCopyWithImpl<$Res>
    extends _$FinanceDtoCopyWithImpl<$Res, _$FinanceDtoImpl>
    implements _$$FinanceDtoImplCopyWith<$Res> {
  __$$FinanceDtoImplCopyWithImpl(
      _$FinanceDtoImpl _value, $Res Function(_$FinanceDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? bonus = null,
  }) {
    return _then(_$FinanceDtoImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinanceDtoImpl implements _FinanceDto {
  const _$FinanceDtoImpl({required this.balance, required this.bonus});

  factory _$FinanceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinanceDtoImplFromJson(json);

  @override
  final int balance;
  @override
  final int bonus;

  @override
  String toString() {
    return 'FinanceDto(balance: $balance, bonus: $bonus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceDtoImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.bonus, bonus) || other.bonus == bonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, balance, bonus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceDtoImplCopyWith<_$FinanceDtoImpl> get copyWith =>
      __$$FinanceDtoImplCopyWithImpl<_$FinanceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinanceDtoImplToJson(
      this,
    );
  }
}

abstract class _FinanceDto implements FinanceDto {
  const factory _FinanceDto(
      {required final int balance,
      required final int bonus}) = _$FinanceDtoImpl;

  factory _FinanceDto.fromJson(Map<String, dynamic> json) =
      _$FinanceDtoImpl.fromJson;

  @override
  int get balance;
  @override
  int get bonus;
  @override
  @JsonKey(ignore: true)
  _$$FinanceDtoImplCopyWith<_$FinanceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
