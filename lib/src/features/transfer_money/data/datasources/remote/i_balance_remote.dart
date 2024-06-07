import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';

abstract class IBalanceRemote {
  Future<Either<DomainException, String>> payInfo();

  Future<Either<DomainException, String>> withdrawInfo();
}
