import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/utils/loggers/logger.dart';
import 'package:nomad_taxi/src/features/help/data/datasources/help_remote_impl.dart';
import 'package:nomad_taxi/src/features/help/data/datasources/i_help_remote.dart';
import 'package:nomad_taxi/src/features/help/data/models/question_dto.dart';
import 'package:nomad_taxi/src/features/help/domain/entities/question.dart';
import 'package:nomad_taxi/src/features/help/domain/entities/questions.dart';
import 'package:nomad_taxi/src/features/help/domain/mappers/question_dto_mapper.dart';
import 'package:nomad_taxi/src/features/help/domain/repositories/i_help_repository.dart';

import '../../../../core/exceptions/domain_exception.dart';

@named
@LazySingleton(as: IHelpRepository)
class HelpRepositoryImpl implements IHelpRepository {
  final IHelpRemote _helpImpl;
  HelpRepositoryImpl(@Named.from(HelpRemoteImpl) this._helpImpl);

  @override
  Future<Either<DomainException, Questions>> getQuestions() async {
    try {
      final result = await _helpImpl.getQuestions();
      return result.fold(
        (error) => Left(error),
        (dtos) {
          final List<Question> entities = dtos.questions
              .map((QuestionDto dto) => QuestionDtoMapper().map(dto))
              .toList();

          return Right(Questions(questions: entities));
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
