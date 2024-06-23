import 'package:nomad_taxi/src/features/order_search/data/models/searched_order_address_dto.dart';
import 'package:nomad_taxi/src/features/order_search/domain/entities/searched_order_address.dart';

class SearchOrderAddressDtoMapper {
  SearchedOrderAddressEntity map(SearchedOrderAddressDto dto) {
    return SearchedOrderAddressEntity(
        id: dto.id,
        town: dto.town,
        title: dto.title,
        lat: dto.lat,
        lng: dto.lng);
  }
}
