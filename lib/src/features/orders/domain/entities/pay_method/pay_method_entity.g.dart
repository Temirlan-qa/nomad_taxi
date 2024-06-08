// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_method_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayMethodEntityImpl _$$PayMethodEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PayMethodEntityImpl(
      byCash: (json['byCash'] as num).toInt(),
      byBonus: (json['byBonus'] as num).toInt(),
    );

Map<String, dynamic> _$$PayMethodEntityImplToJson(
        _$PayMethodEntityImpl instance) =>
    <String, dynamic>{
      'byCash': instance.byCash,
      'byBonus': instance.byBonus,
    };
