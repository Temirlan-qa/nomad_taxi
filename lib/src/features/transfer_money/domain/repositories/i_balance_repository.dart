import 'package:fpdart/fpdart.dart';
import '../../../../core/exceptions/domain_exception.dart';

abstract class IBalanceRepository {
  Future<Either<DomainException, String>> payInfo();

  Future<Either<DomainException, String>> withdrawInfo();
}
