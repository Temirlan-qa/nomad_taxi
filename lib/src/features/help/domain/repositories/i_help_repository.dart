import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/features/help/domain/entities/questions.dart';

import '../../../../core/exceptions/domain_exception.dart';

abstract class IHelpRepository {
  Future<Either<DomainException, Questions>> getQuestions();
}
