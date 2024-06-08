// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_language_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateLanguageRequest _$UpdateLanguageRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateLanguageRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateLanguageRequest {
  @JsonKey(name: 'language_code')
  String get languageCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateLanguageRequestCopyWith<UpdateLanguageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateLanguageRequestCopyWith<$Res> {
  factory $UpdateLanguageRequestCopyWith(UpdateLanguageRequest value,
          $Res Function(UpdateLanguageRequest) then) =
      _$UpdateLanguageRequestCopyWithImpl<$Res, UpdateLanguageRequest>;
  @useResult
  $Res call({@JsonKey(name: 'language_code') String languageCode});
}

/// @nodoc
class _$UpdateLanguageRequestCopyWithImpl<$Res,
        $Val extends UpdateLanguageRequest>
    implements $UpdateLanguageRequestCopyWith<$Res> {
  _$UpdateLanguageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_value.copyWith(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateLanguageRequestImplCopyWith<$Res>
    implements $UpdateLanguageRequestCopyWith<$Res> {
  factory _$$UpdateLanguageRequestImplCopyWith(
          _$UpdateLanguageRequestImpl value,
          $Res Function(_$UpdateLanguageRequestImpl) then) =
      __$$UpdateLanguageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'language_code') String languageCode});
}

/// @nodoc
class __$$UpdateLanguageRequestImplCopyWithImpl<$Res>
    extends _$UpdateLanguageRequestCopyWithImpl<$Res,
        _$UpdateLanguageRequestImpl>
    implements _$$UpdateLanguageRequestImplCopyWith<$Res> {
  __$$UpdateLanguageRequestImplCopyWithImpl(_$UpdateLanguageRequestImpl _value,
      $Res Function(_$UpdateLanguageRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_$UpdateLanguageRequestImpl(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateLanguageRequestImpl implements _UpdateLanguageRequest {
  const _$UpdateLanguageRequestImpl(
      {@JsonKey(name: 'language_code') required this.languageCode});

  factory _$UpdateLanguageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateLanguageRequestImplFromJson(json);

  @override
  @JsonKey(name: 'language_code')
  final String languageCode;

  @override
  String toString() {
    return 'UpdateLanguageRequest(languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLanguageRequestImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLanguageRequestImplCopyWith<_$UpdateLanguageRequestImpl>
      get copyWith => __$$UpdateLanguageRequestImplCopyWithImpl<
          _$UpdateLanguageRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateLanguageRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateLanguageRequest implements UpdateLanguageRequest {
  const factory _UpdateLanguageRequest(
      {@JsonKey(name: 'language_code')
      required final String languageCode}) = _$UpdateLanguageRequestImpl;

  factory _UpdateLanguageRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateLanguageRequestImpl.fromJson;

  @override
  @JsonKey(name: 'language_code')
  String get languageCode;
  @override
  @JsonKey(ignore: true)
  _$$UpdateLanguageRequestImplCopyWith<_$UpdateLanguageRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
