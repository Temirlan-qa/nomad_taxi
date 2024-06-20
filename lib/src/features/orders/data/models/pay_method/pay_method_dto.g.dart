// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_method_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayMethodDtoImpl _$$PayMethodDtoImplFromJson(Map<String, dynamic> json) =>
    _$PayMethodDtoImpl(
      byCash: (json['by_cash'] as num).toInt(),
      byBonus: (json['by_bonus'] as num).toInt(),
    );

Map<String, dynamic> _$$PayMethodDtoImplToJson(_$PayMethodDtoImpl instance) =>
    <String, dynamic>{
      'by_cash': instance.byCash,
      'by_bonus': instance.byBonus,
    };
