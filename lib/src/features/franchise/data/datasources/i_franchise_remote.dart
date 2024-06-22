import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';

abstract class IFranchiseRemote {
  Future<Either<DomainException, String>> franchiseInfo();
}
