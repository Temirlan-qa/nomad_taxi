import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';

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
    required String status,
    @JsonKey(name: 'has_route') required bool hasRoute,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'pay_method') required PayMethodDto payMethod,
    @JsonKey(name: 'waiting_time') int? waitingTime,
    PartnerDto? partner,
    required String phone,
    @JsonKey(name: 'town_id') required int townId,
    required List<PointDto> points,
  }) = _OrderDto;

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);
}
