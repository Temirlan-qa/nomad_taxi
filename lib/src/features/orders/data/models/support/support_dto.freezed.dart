// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupportDto _$SupportDtoFromJson(Map<String, dynamic> json) {
  return _SupportDto.fromJson(json);
}

/// @nodoc
mixin _$SupportDto {
  String get phone => throw _privateConstructorUsedError;
  String get feedback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportDtoCopyWith<SupportDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportDtoCopyWith<$Res> {
  factory $SupportDtoCopyWith(
          SupportDto value, $Res Function(SupportDto) then) =
      _$SupportDtoCopyWithImpl<$Res, SupportDto>;
  @useResult
  $Res call({String phone, String feedback});
}

/// @nodoc
class _$SupportDtoCopyWithImpl<$Res, $Val extends SupportDto>
    implements $SupportDtoCopyWith<$Res> {
  _$SupportDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? feedback = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportDtoImplCopyWith<$Res>
    implements $SupportDtoCopyWith<$Res> {
  factory _$$SupportDtoImplCopyWith(
          _$SupportDtoImpl value, $Res Function(_$SupportDtoImpl) then) =
      __$$SupportDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, String feedback});
}

/// @nodoc
class __$$SupportDtoImplCopyWithImpl<$Res>
    extends _$SupportDtoCopyWithImpl<$Res, _$SupportDtoImpl>
    implements _$$SupportDtoImplCopyWith<$Res> {
  __$$SupportDtoImplCopyWithImpl(
      _$SupportDtoImpl _value, $Res Function(_$SupportDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? feedback = null,
  }) {
    return _then(_$SupportDtoImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportDtoImpl implements _SupportDto {
  const _$SupportDtoImpl({required this.phone, required this.feedback});

  factory _$SupportDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportDtoImplFromJson(json);

  @override
  final String phone;
  @override
  final String feedback;

  @override
  String toString() {
    return 'SupportDto(phone: $phone, feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportDtoImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, feedback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportDtoImplCopyWith<_$SupportDtoImpl> get copyWith =>
      __$$SupportDtoImplCopyWithImpl<_$SupportDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportDtoImplToJson(
      this,
    );
  }
}

abstract class _SupportDto implements SupportDto {
  const factory _SupportDto(
      {required final String phone,
      required final String feedback}) = _$SupportDtoImpl;

  factory _SupportDto.fromJson(Map<String, dynamic> json) =
      _$SupportDtoImpl.fromJson;

  @override
  String get phone;
  @override
  String get feedback;
  @override
  @JsonKey(ignore: true)
  _$$SupportDtoImplCopyWith<_$SupportDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
