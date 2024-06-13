// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionDtoImpl _$$QuestionDtoImplFromJson(Map<String, dynamic> json) =>
    _$QuestionDtoImpl(
      question: json['question'] as String,
      answer: json['answer'] as String,
      answerTime: json['answer_time'] as String,
    );

Map<String, dynamic> _$$QuestionDtoImplToJson(_$QuestionDtoImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      'answer_time': instance.answerTime,
    };
