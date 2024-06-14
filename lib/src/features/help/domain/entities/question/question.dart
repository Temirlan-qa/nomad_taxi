import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/base/base_models/base_entity.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question extends BaseEntity with _$Question {
  const factory Question({
    required String question,
    required String answer,
    required String answerTime,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
