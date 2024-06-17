import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/point/point_dto.dart';

import '../../../../profile/data/models/partner/partner_dto.dart';
import '../pay_method/pay_method_dto.dart';
import '../point/point_dto.dart';

part 'order_dto.freezed.dart';
part 'order_dto.g.dart';

@freezed
class OrderDto extends BaseDto with _$OrderDto {
  const factory OrderDto({
    required int id,
    @JsonKey(name: 'start_point') required String startPoint,
    @JsonKey(name: 'end_point') required String endPoint,
    required int price,
    String? comment,
    String? status,
    @Default(false) @JsonKey(name: 'has_route') bool hasRoute,
    @Default('') @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'pay_method') PayMethodDto? payMethod,
    @Default(null) @JsonKey(name: 'waiting_time') int? waitingTime,
    @Default(null) PartnerDto? partner,
    @Default('') String phone,
    @JsonKey(name: 'town_id') int? townId,
    @Default([]) List<PointDto> points,
  }) = _OrderDto;

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);
}