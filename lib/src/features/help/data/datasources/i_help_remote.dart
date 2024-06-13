import 'package:fpdart/fpdart.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/features/help/data/models/questions_dto.dart';

abstract class IHelpRemote {
  Future<Either<DomainException, QuestionsDto>> getQuestions();
}
