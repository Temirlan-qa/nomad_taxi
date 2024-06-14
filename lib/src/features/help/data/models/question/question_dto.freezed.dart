// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionDto _$QuestionDtoFromJson(Map<String, dynamic> json) {
  return _QuestionDto.fromJson(json);
}

/// @nodoc
mixin _$QuestionDto {
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer_time')
  String get answerTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionDtoCopyWith<QuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDtoCopyWith<$Res> {
  factory $QuestionDtoCopyWith(
          QuestionDto value, $Res Function(QuestionDto) then) =
      _$QuestionDtoCopyWithImpl<$Res, QuestionDto>;
  @useResult
  $Res call(
      {String question,
      String answer,
      @JsonKey(name: 'answer_time') String answerTime});
}

/// @nodoc
class _$QuestionDtoCopyWithImpl<$Res, $Val extends QuestionDto>
    implements $QuestionDtoCopyWith<$Res> {
  _$QuestionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? answerTime = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      answerTime: null == answerTime
          ? _value.answerTime
          : answerTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionDtoImplCopyWith<$Res>
    implements $QuestionDtoCopyWith<$Res> {
  factory _$$QuestionDtoImplCopyWith(
          _$QuestionDtoImpl value, $Res Function(_$QuestionDtoImpl) then) =
      __$$QuestionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String question,
      String answer,
      @JsonKey(name: 'answer_time') String answerTime});
}

/// @nodoc
class __$$QuestionDtoImplCopyWithImpl<$Res>
    extends _$QuestionDtoCopyWithImpl<$Res, _$QuestionDtoImpl>
    implements _$$QuestionDtoImplCopyWith<$Res> {
  __$$QuestionDtoImplCopyWithImpl(
      _$QuestionDtoImpl _value, $Res Function(_$QuestionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? answerTime = null,
  }) {
    return _then(_$QuestionDtoImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      answerTime: null == answerTime
          ? _value.answerTime
          : answerTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionDtoImpl implements _QuestionDto {
  const _$QuestionDtoImpl(
      {required this.question,
      required this.answer,
      @JsonKey(name: 'answer_time') required this.answerTime});

  factory _$QuestionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionDtoImplFromJson(json);

  @override
  final String question;
  @override
  final String answer;
  @override
  @JsonKey(name: 'answer_time')
  final String answerTime;

  @override
  String toString() {
    return 'QuestionDto(question: $question, answer: $answer, answerTime: $answerTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDtoImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.answerTime, answerTime) ||
                other.answerTime == answerTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer, answerTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionDtoImplCopyWith<_$QuestionDtoImpl> get copyWith =>
      __$$QuestionDtoImplCopyWithImpl<_$QuestionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionDtoImplToJson(
      this,
    );
  }
}

abstract class _QuestionDto implements QuestionDto {
  const factory _QuestionDto(
          {required final String question,
          required final String answer,
          @JsonKey(name: 'answer_time') required final String answerTime}) =
      _$QuestionDtoImpl;

  factory _QuestionDto.fromJson(Map<String, dynamic> json) =
      _$QuestionDtoImpl.fromJson;

  @override
  String get question;
  @override
  String get answer;
  @override
  @JsonKey(name: 'answer_time')
  String get answerTime;
  @override
  @JsonKey(ignore: true)
  _$$QuestionDtoImplCopyWith<_$QuestionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
