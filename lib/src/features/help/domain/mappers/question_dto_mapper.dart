import 'package:nomad_taxi/src/features/help/data/models/question/question_dto.dart';
import 'package:nomad_taxi/src/features/help/domain/entities/question/question.dart';

class QuestionDtoMapper {
  Question map(QuestionDto dto) {
    return Question(
      question: dto.question,
      answer: dto.answer,
      answerTime: dto.answerTime,
    );
  }
}
