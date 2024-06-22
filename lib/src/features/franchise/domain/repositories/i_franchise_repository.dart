import 'package:fpdart/fpdart.dart';

import '../../../../core/exceptions/domain_exception.dart';

abstract class IFranchiseRepository {
  Future<Either<DomainException, String>> franchiseInfo();
}
