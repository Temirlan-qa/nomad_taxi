// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inside_city_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InsideCityEntityImpl _$$InsideCityEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$InsideCityEntityImpl(
      minPrice: (json['minPrice'] as num).toInt(),
      maxPrice: (json['maxPrice'] as num).toInt(),
      tariff: TariffEntity.fromJson(json['tariff'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InsideCityEntityImplToJson(
        _$InsideCityEntityImpl instance) =>
    <String, dynamic>{
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'tariff': instance.tariff,
    };
