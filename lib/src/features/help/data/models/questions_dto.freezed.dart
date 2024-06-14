// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questions_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionsDto _$QuestionsDtoFromJson(Map<String, dynamic> json) {
  return _QuestionsDto.fromJson(json);
}

/// @nodoc
mixin _$QuestionsDto {
  List<QuestionDto> get questions => throw _privateConstructorUsedError;
  SupportDto get support => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionsDtoCopyWith<QuestionsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsDtoCopyWith<$Res> {
  factory $QuestionsDtoCopyWith(
          QuestionsDto value, $Res Function(QuestionsDto) then) =
      _$QuestionsDtoCopyWithImpl<$Res, QuestionsDto>;
  @useResult
  $Res call({List<QuestionDto> questions, SupportDto support});

  $SupportDtoCopyWith<$Res> get support;
}

/// @nodoc
class _$QuestionsDtoCopyWithImpl<$Res, $Val extends QuestionsDto>
    implements $QuestionsDtoCopyWith<$Res> {
  _$QuestionsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? support = null,
  }) {
    return _then(_value.copyWith(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionDto>,
      support: null == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as SupportDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SupportDtoCopyWith<$Res> get support {
    return $SupportDtoCopyWith<$Res>(_value.support, (value) {
      return _then(_value.copyWith(support: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionsDtoImplCopyWith<$Res>
    implements $QuestionsDtoCopyWith<$Res> {
  factory _$$QuestionsDtoImplCopyWith(
          _$QuestionsDtoImpl value, $Res Function(_$QuestionsDtoImpl) then) =
      __$$QuestionsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuestionDto> questions, SupportDto support});

  @override
  $SupportDtoCopyWith<$Res> get support;
}

/// @nodoc
class __$$QuestionsDtoImplCopyWithImpl<$Res>
    extends _$QuestionsDtoCopyWithImpl<$Res, _$QuestionsDtoImpl>
    implements _$$QuestionsDtoImplCopyWith<$Res> {
  __$$QuestionsDtoImplCopyWithImpl(
      _$QuestionsDtoImpl _value, $Res Function(_$QuestionsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? support = null,
  }) {
    return _then(_$QuestionsDtoImpl(
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionDto>,
      support: null == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as SupportDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionsDtoImpl implements _QuestionsDto {
  const _$QuestionsDtoImpl(
      {required final List<QuestionDto> questions, required this.support})
      : _questions = questions;

  factory _$QuestionsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionsDtoImplFromJson(json);

  final List<QuestionDto> _questions;
  @override
  List<QuestionDto> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final SupportDto support;

  @override
  String toString() {
    return 'QuestionsDto(questions: $questions, support: $support)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.support, support) || other.support == support));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_questions), support);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsDtoImplCopyWith<_$QuestionsDtoImpl> get copyWith =>
      __$$QuestionsDtoImplCopyWithImpl<_$QuestionsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionsDtoImplToJson(
      this,
    );
  }
}

abstract class _QuestionsDto implements QuestionsDto {
  const factory _QuestionsDto(
      {required final List<QuestionDto> questions,
      required final SupportDto support}) = _$QuestionsDtoImpl;

  factory _QuestionsDto.fromJson(Map<String, dynamic> json) =
      _$QuestionsDtoImpl.fromJson;

  @override
  List<QuestionDto> get questions;
  @override
  SupportDto get support;
  @override
  @JsonKey(ignore: true)
  _$$QuestionsDtoImplCopyWith<_$QuestionsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
