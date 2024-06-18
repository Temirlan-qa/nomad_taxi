// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promocode_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromocodeEntityImpl _$$PromocodeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PromocodeEntityImpl(
      amount: (json['amount'] as num).toInt(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$PromocodeEntityImplToJson(
        _$PromocodeEntityImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'description': instance.description,
    };
