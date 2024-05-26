// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinanceImpl _$$FinanceImplFromJson(Map<String, dynamic> json) =>
    _$FinanceImpl(
      balance: (json['balance'] as num).toInt(),
      bonus: (json['bonus'] as num).toInt(),
    );

Map<String, dynamic> _$$FinanceImplToJson(_$FinanceImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'bonus': instance.bonus,
    };
