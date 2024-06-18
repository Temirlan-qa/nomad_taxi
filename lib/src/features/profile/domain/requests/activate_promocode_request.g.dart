// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activate_promocode_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivatePromocodeRequestImpl _$$ActivatePromocodeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivatePromocodeRequestImpl(
      promocode: json['promocode'] as String,
      townId: (json['town_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ActivatePromocodeRequestImplToJson(
        _$ActivatePromocodeRequestImpl instance) =>
    <String, dynamic>{
      'promocode': instance.promocode,
      'town_id': instance.townId,
    };
