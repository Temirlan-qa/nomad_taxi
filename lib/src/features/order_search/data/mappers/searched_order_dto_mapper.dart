import 'package:nomad_taxi/src/features/order_search/data/mappers/searched_order_address_dto_mapper.dart';
import 'package:nomad_taxi/src/features/order_search/data/models/searched_order_dto.dart';
import 'package:nomad_taxi/src/features/order_search/domain/entities/searched_order.dart';

class SearchOrderDtoMapper {
  SearchedOrderEntity map(SearchedOrderDto dto) {
    return SearchedOrderEntity(
        status: dto.status,
        data: dto.data
            ?.map((e) => SearchOrderAddressDtoMapper().map(e))
            .toList());
  }
}
