// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inside_city_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InsideCityDtoImpl _$$InsideCityDtoImplFromJson(Map<String, dynamic> json) =>
    _$InsideCityDtoImpl(
      minPrice: (json['min_price'] as num).toInt(),
      maxPrice: (json['max_price'] as num).toInt(),
      tariff: TariffDto.fromJson(json['tariff'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InsideCityDtoImplToJson(_$InsideCityDtoImpl instance) =>
    <String, dynamic>{
      'min_price': instance.minPrice,
      'max_price': instance.maxPrice,
      'tariff': instance.tariff,
    };
