// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cashback_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CashbackInfoImpl _$$CashbackInfoImplFromJson(Map<String, dynamic> json) =>
    _$CashbackInfoImpl(
      id: (json['id'] as num).toInt(),
      cashback: (json['cashback'] as num).toInt(),
      maxAmount: (json['max_amount'] as num).toInt(),
      expiresAt: json['expires_at'] as String,
    );

Map<String, dynamic> _$$CashbackInfoImplToJson(_$CashbackInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cashback': instance.cashback,
      'max_amount': instance.maxAmount,
      'expires_at': instance.expiresAt,
    };
