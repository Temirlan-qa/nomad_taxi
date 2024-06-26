// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LanguageEntity _$LanguageEntityFromJson(Map<String, dynamic> json) {
  return _LanguageEntity.fromJson(json);
}

/// @nodoc
mixin _$LanguageEntity {
  String get code => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageEntityCopyWith<LanguageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEntityCopyWith<$Res> {
  factory $LanguageEntityCopyWith(
          LanguageEntity value, $Res Function(LanguageEntity) then) =
      _$LanguageEntityCopyWithImpl<$Res, LanguageEntity>;
  @useResult
  $Res call({String code, String title});
}

/// @nodoc
class _$LanguageEntityCopyWithImpl<$Res, $Val extends LanguageEntity>
    implements $LanguageEntityCopyWith<$Res> {
  _$LanguageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageEntityImplCopyWith<$Res>
    implements $LanguageEntityCopyWith<$Res> {
  factory _$$LanguageEntityImplCopyWith(_$LanguageEntityImpl value,
          $Res Function(_$LanguageEntityImpl) then) =
      __$$LanguageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String title});
}

/// @nodoc
class __$$LanguageEntityImplCopyWithImpl<$Res>
    extends _$LanguageEntityCopyWithImpl<$Res, _$LanguageEntityImpl>
    implements _$$LanguageEntityImplCopyWith<$Res> {
  __$$LanguageEntityImplCopyWithImpl(
      _$LanguageEntityImpl _value, $Res Function(_$LanguageEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
  }) {
    return _then(_$LanguageEntityImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageEntityImpl implements _LanguageEntity {
  const _$LanguageEntityImpl({required this.code, required this.title});

  factory _$LanguageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageEntityImplFromJson(json);

  @override
  final String code;
  @override
  final String title;

  @override
  String toString() {
    return 'LanguageEntity(code: $code, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageEntityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageEntityImplCopyWith<_$LanguageEntityImpl> get copyWith =>
      __$$LanguageEntityImplCopyWithImpl<_$LanguageEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageEntityImplToJson(
      this,
    );
  }
}

abstract class _LanguageEntity implements LanguageEntity {
  const factory _LanguageEntity(
      {required final String code,
      required final String title}) = _$LanguageEntityImpl;

  factory _LanguageEntity.fromJson(Map<String, dynamic> json) =
      _$LanguageEntityImpl.fromJson;

  @override
  String get code;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$LanguageEntityImplCopyWith<_$LanguageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
