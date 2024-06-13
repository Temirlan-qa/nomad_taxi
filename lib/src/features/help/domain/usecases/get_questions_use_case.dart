import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/features/help/data/repositories/profile_repository_impl.dart';
import 'package:nomad_taxi/src/features/help/domain/entities/questions.dart';
import 'package:nomad_taxi/src/features/help/domain/repositories/i_help_repository.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class GetQuestionsUseCase extends NoneInputBoundaryUseCase<Questions> {
  final IHelpRepository _repository;

  GetQuestionsUseCase(@Named.from(HelpRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, Questions>> execute() async =>
      _repository.getQuestions();
}
