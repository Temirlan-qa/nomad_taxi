// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cashback_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CashbackInfoDtoImpl _$$CashbackInfoDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CashbackInfoDtoImpl(
      id: (json['id'] as num).toInt(),
      cashback: (json['cashback'] as num).toInt(),
      maxAmount: (json['max_amount'] as num).toInt(),
      expiresAt: json['expires_at'] as String,
    );

Map<String, dynamic> _$$CashbackInfoDtoImplToJson(
        _$CashbackInfoDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cashback': instance.cashback,
      'max_amount': instance.maxAmount,
      'expires_at': instance.expiresAt,
    };
