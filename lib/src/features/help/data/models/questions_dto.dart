import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../src/core/base/base_models/base_dto.dart';
import 'question/question_dto.dart';
import 'support/support_dto.dart';

part 'questions_dto.freezed.dart';
part 'questions_dto.g.dart';

@freezed
class QuestionsDto extends BaseDto with _$QuestionsDto {
  const factory QuestionsDto({
    required List<QuestionDto> questions,
    required SupportDto support,
  }) = _QuestionsDto;

  factory QuestionsDto.fromJson(Map<String, dynamic> json) =>
      _$QuestionsDtoFromJson(json);
}
