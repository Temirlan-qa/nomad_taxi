// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_method_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayMethodEntityImpl _$$PayMethodEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PayMethodEntityImpl(
      byCash: (json['byCash'] as num?)?.toInt() ?? 0,
      byBonus: (json['byBonus'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PayMethodEntityImplToJson(
        _$PayMethodEntityImpl instance) =>
    <String, dynamic>{
      'byCash': instance.byCash,
      'byBonus': instance.byBonus,
    };
