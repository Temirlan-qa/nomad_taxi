// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tariff_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TariffEntityImpl _$$TariffEntityImplFromJson(Map<String, dynamic> json) =>
    _$TariffEntityImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      commission: (json['commission'] as num).toInt(),
    );

Map<String, dynamic> _$$TariffEntityImplToJson(_$TariffEntityImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'commission': instance.commission,
    };
