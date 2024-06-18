// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promocode_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromocodeDtoImpl _$$PromocodeDtoImplFromJson(Map<String, dynamic> json) =>
    _$PromocodeDtoImpl(
      amount: (json['amount'] as num).toInt(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$PromocodeDtoImplToJson(_$PromocodeDtoImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'description': instance.description,
    };
