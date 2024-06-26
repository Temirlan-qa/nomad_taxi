// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tariff_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TariffDtoImpl _$$TariffDtoImplFromJson(Map<String, dynamic> json) =>
    _$TariffDtoImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      commission: (json['commission'] as num).toInt(),
    );

Map<String, dynamic> _$$TariffDtoImplToJson(_$TariffDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'commission': instance.commission,
    };
