// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_method_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayMethodEntityImpl _$$PayMethodEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PayMethodEntityImpl(
      byCash: (json['by_cash'] as num).toInt(),
      byBonus: (json['by_bonus'] as num).toInt(),
    );

Map<String, dynamic> _$$PayMethodEntityImplToJson(
        _$PayMethodEntityImpl instance) =>
    <String, dynamic>{
      'by_cash': instance.byCash,
      'by_bonus': instance.byBonus,
    };
