// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupportEntity _$SupportEntityFromJson(Map<String, dynamic> json) {
  return _SupportEntity.fromJson(json);
}

/// @nodoc
mixin _$SupportEntity {
  String get phone => throw _privateConstructorUsedError;
  String get feedback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportEntityCopyWith<SupportEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportEntityCopyWith<$Res> {
  factory $SupportEntityCopyWith(
          SupportEntity value, $Res Function(SupportEntity) then) =
      _$SupportEntityCopyWithImpl<$Res, SupportEntity>;
  @useResult
  $Res call({String phone, String feedback});
}

/// @nodoc
class _$SupportEntityCopyWithImpl<$Res, $Val extends SupportEntity>
    implements $SupportEntityCopyWith<$Res> {
  _$SupportEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$SupportEntityImplCopyWith<$Res>
    implements $SupportEntityCopyWith<$Res> {
  factory _$$SupportEntityImplCopyWith(
          _$SupportEntityImpl value, $Res Function(_$SupportEntityImpl) then) =
      __$$SupportEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, String feedback});
}

/// @nodoc
class __$$SupportEntityImplCopyWithImpl<$Res>
    extends _$SupportEntityCopyWithImpl<$Res, _$SupportEntityImpl>
    implements _$$SupportEntityImplCopyWith<$Res> {
  __$$SupportEntityImplCopyWithImpl(
      _$SupportEntityImpl _value, $Res Function(_$SupportEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? feedback = null,
  }) {
    return _then(_$SupportEntityImpl(
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
class _$SupportEntityImpl implements _SupportEntity {
  const _$SupportEntityImpl({required this.phone, required this.feedback});

  factory _$SupportEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportEntityImplFromJson(json);

  @override
  final String phone;
  @override
  final String feedback;

  @override
  String toString() {
    return 'SupportEntity(phone: $phone, feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportEntityImpl &&
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
  _$$SupportEntityImplCopyWith<_$SupportEntityImpl> get copyWith =>
      __$$SupportEntityImplCopyWithImpl<_$SupportEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportEntityImplToJson(
      this,
    );
  }
}

abstract class _SupportEntity implements SupportEntity {
  const factory _SupportEntity(
      {required final String phone,
      required final String feedback}) = _$SupportEntityImpl;

  factory _SupportEntity.fromJson(Map<String, dynamic> json) =
      _$SupportEntityImpl.fromJson;

  @override
  String get phone;
  @override
  String get feedback;
  @override
  @JsonKey(ignore: true)
  _$$SupportEntityImplCopyWith<_$SupportEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
