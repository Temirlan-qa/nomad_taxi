// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionsDtoImpl _$$QuestionsDtoImplFromJson(Map<String, dynamic> json) =>
    _$QuestionsDtoImpl(
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuestionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionsDtoImplToJson(_$QuestionsDtoImpl instance) =>
    <String, dynamic>{
      'questions': instance.questions,
    };
