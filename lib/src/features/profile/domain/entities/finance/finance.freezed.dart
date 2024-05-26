// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Finance _$FinanceFromJson(Map<String, dynamic> json) {
  return _Finance.fromJson(json);
}

/// @nodoc
mixin _$Finance {
  int get balance => throw _privateConstructorUsedError;
  int get bonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinanceCopyWith<Finance> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceCopyWith<$Res> {
  factory $FinanceCopyWith(Finance value, $Res Function(Finance) then) =
      _$FinanceCopyWithImpl<$Res, Finance>;
  @useResult
  $Res call({int balance, int bonus});
}

/// @nodoc
class _$FinanceCopyWithImpl<$Res, $Val extends Finance>
    implements $FinanceCopyWith<$Res> {
  _$FinanceCopyWithImpl(this._value, this._then);

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
abstract class _$$FinanceImplCopyWith<$Res> implements $FinanceCopyWith<$Res> {
  factory _$$FinanceImplCopyWith(
          _$FinanceImpl value, $Res Function(_$FinanceImpl) then) =
      __$$FinanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int balance, int bonus});
}

/// @nodoc
class __$$FinanceImplCopyWithImpl<$Res>
    extends _$FinanceCopyWithImpl<$Res, _$FinanceImpl>
    implements _$$FinanceImplCopyWith<$Res> {
  __$$FinanceImplCopyWithImpl(
      _$FinanceImpl _value, $Res Function(_$FinanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? bonus = null,
  }) {
    return _then(_$FinanceImpl(
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
class _$FinanceImpl implements _Finance {
  const _$FinanceImpl({required this.balance, required this.bonus});

  factory _$FinanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinanceImplFromJson(json);

  @override
  final int balance;
  @override
  final int bonus;

  @override
  String toString() {
    return 'Finance(balance: $balance, bonus: $bonus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.bonus, bonus) || other.bonus == bonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, balance, bonus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceImplCopyWith<_$FinanceImpl> get copyWith =>
      __$$FinanceImplCopyWithImpl<_$FinanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinanceImplToJson(
      this,
    );
  }
}

abstract class _Finance implements Finance {
  const factory _Finance(
      {required final int balance, required final int bonus}) = _$FinanceImpl;

  factory _Finance.fromJson(Map<String, dynamic> json) = _$FinanceImpl.fromJson;

  @override
  int get balance;
  @override
  int get bonus;
  @override
  @JsonKey(ignore: true)
  _$$FinanceImplCopyWith<_$FinanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
