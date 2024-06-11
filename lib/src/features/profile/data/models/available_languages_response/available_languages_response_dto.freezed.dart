// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_languages_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvailableLanguagesResponseDto _$AvailableLanguagesResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _AvailableLanguagesResponseDto.fromJson(json);
}

/// @nodoc
mixin _$AvailableLanguagesResponseDto {
  String get status => throw _privateConstructorUsedError;
  List<LanguageDto> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableLanguagesResponseDtoCopyWith<AvailableLanguagesResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableLanguagesResponseDtoCopyWith<$Res> {
  factory $AvailableLanguagesResponseDtoCopyWith(
          AvailableLanguagesResponseDto value,
          $Res Function(AvailableLanguagesResponseDto) then) =
      _$AvailableLanguagesResponseDtoCopyWithImpl<$Res,
          AvailableLanguagesResponseDto>;
  @useResult
  $Res call({String status, List<LanguageDto> data});
}

/// @nodoc
class _$AvailableLanguagesResponseDtoCopyWithImpl<$Res,
        $Val extends AvailableLanguagesResponseDto>
    implements $AvailableLanguagesResponseDtoCopyWith<$Res> {
  _$AvailableLanguagesResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LanguageDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableLanguagesResponseDtoImplCopyWith<$Res>
    implements $AvailableLanguagesResponseDtoCopyWith<$Res> {
  factory _$$AvailableLanguagesResponseDtoImplCopyWith(
          _$AvailableLanguagesResponseDtoImpl value,
          $Res Function(_$AvailableLanguagesResponseDtoImpl) then) =
      __$$AvailableLanguagesResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, List<LanguageDto> data});
}

/// @nodoc
class __$$AvailableLanguagesResponseDtoImplCopyWithImpl<$Res>
    extends _$AvailableLanguagesResponseDtoCopyWithImpl<$Res,
        _$AvailableLanguagesResponseDtoImpl>
    implements _$$AvailableLanguagesResponseDtoImplCopyWith<$Res> {
  __$$AvailableLanguagesResponseDtoImplCopyWithImpl(
      _$AvailableLanguagesResponseDtoImpl _value,
      $Res Function(_$AvailableLanguagesResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$AvailableLanguagesResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LanguageDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableLanguagesResponseDtoImpl
    implements _AvailableLanguagesResponseDto {
  const _$AvailableLanguagesResponseDtoImpl(
      {required this.status, required final List<LanguageDto> data})
      : _data = data;

  factory _$AvailableLanguagesResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AvailableLanguagesResponseDtoImplFromJson(json);

  @override
  final String status;
  final List<LanguageDto> _data;
  @override
  List<LanguageDto> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AvailableLanguagesResponseDto(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableLanguagesResponseDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableLanguagesResponseDtoImplCopyWith<
          _$AvailableLanguagesResponseDtoImpl>
      get copyWith => __$$AvailableLanguagesResponseDtoImplCopyWithImpl<
          _$AvailableLanguagesResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableLanguagesResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _AvailableLanguagesResponseDto
    implements AvailableLanguagesResponseDto {
  const factory _AvailableLanguagesResponseDto(
          {required final String status,
          required final List<LanguageDto> data}) =
      _$AvailableLanguagesResponseDtoImpl;

  factory _AvailableLanguagesResponseDto.fromJson(Map<String, dynamic> json) =
      _$AvailableLanguagesResponseDtoImpl.fromJson;

  @override
  String get status;
  @override
  List<LanguageDto> get data;
  @override
  @JsonKey(ignore: true)
  _$$AvailableLanguagesResponseDtoImplCopyWith<
          _$AvailableLanguagesResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
