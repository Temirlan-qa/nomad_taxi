import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_models/base_dto.dart';
import 'package:nomad_taxi/src/features/orders/data/models/order/order_dto.dart';

part 'orders_dto.freezed.dart';
part 'orders_dto.g.dart';

@freezed
class OrdersDto extends BaseDto with _$OrdersDto {
  const factory OrdersDto({
    required List<OrderDto> orders,
  }) = _OrdersDto;

  factory OrdersDto.fromJson(Map<String, dynamic> json) =>
      _$OrdersDtoFromJson(json);
}
