// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinanceDtoImpl _$$FinanceDtoImplFromJson(Map<String, dynamic> json) =>
    _$FinanceDtoImpl(
      balance: (json['balance'] as num?)?.toInt(),
      bonus: (json['bonus'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FinanceDtoImplToJson(_$FinanceDtoImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'bonus': instance.bonus,
    };
