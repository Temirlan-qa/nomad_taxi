import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../src/core/base/base_models/base_entity.dart';
import 'question/question.dart';
import 'support/support.dart';

part 'questions.freezed.dart';
part 'questions.g.dart';

@freezed
class Questions extends BaseEntity with _$Questions {
  const factory Questions({
    required List<Question> questions,
    required Support support,
  }) = _Questions;

  factory Questions.fromJson(Map<String, dynamic> json) =>
      _$QuestionsFromJson(json);
}
