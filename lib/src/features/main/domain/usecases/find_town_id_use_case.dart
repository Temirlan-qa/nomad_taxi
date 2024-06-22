import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/features/main/domain/models/find_town_id_request.dart';
import 'package:nomad_taxi/src/features/orders/data/repositories/orders_repository_impl.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/find_town_by_location_response/find_town_by_location_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/repositories/i_orders_repository.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class FindTownIdUseCase
    extends UseCase<FindTownByLocationResponse, FindTownIdRequest> {
  final IOrdersRepository _repository;

  FindTownIdUseCase(@Named.from(OrdersRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, FindTownByLocationResponse>> execute(
          FindTownIdRequest requestModel) async =>
      _repository.findTownByLocation(requestModel);
}
