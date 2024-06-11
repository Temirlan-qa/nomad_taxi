// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_languages_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvailableLanguagesResponse _$AvailableLanguagesResponseFromJson(
    Map<String, dynamic> json) {
  return _AvailableLanguagesResponse.fromJson(json);
}

/// @nodoc
mixin _$AvailableLanguagesResponse {
  String get status => throw _privateConstructorUsedError;
  List<LanguageEntity> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableLanguagesResponseCopyWith<AvailableLanguagesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableLanguagesResponseCopyWith<$Res> {
  factory $AvailableLanguagesResponseCopyWith(AvailableLanguagesResponse value,
          $Res Function(AvailableLanguagesResponse) then) =
      _$AvailableLanguagesResponseCopyWithImpl<$Res,
          AvailableLanguagesResponse>;
  @useResult
  $Res call({String status, List<LanguageEntity> data});
}

/// @nodoc
class _$AvailableLanguagesResponseCopyWithImpl<$Res,
        $Val extends AvailableLanguagesResponse>
    implements $AvailableLanguagesResponseCopyWith<$Res> {
  _$AvailableLanguagesResponseCopyWithImpl(this._value, this._then);

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
              as List<LanguageEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableLanguagesResponseImplCopyWith<$Res>
    implements $AvailableLanguagesResponseCopyWith<$Res> {
  factory _$$AvailableLanguagesResponseImplCopyWith(
          _$AvailableLanguagesResponseImpl value,
          $Res Function(_$AvailableLanguagesResponseImpl) then) =
      __$$AvailableLanguagesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, List<LanguageEntity> data});
}

/// @nodoc
class __$$AvailableLanguagesResponseImplCopyWithImpl<$Res>
    extends _$AvailableLanguagesResponseCopyWithImpl<$Res,
        _$AvailableLanguagesResponseImpl>
    implements _$$AvailableLanguagesResponseImplCopyWith<$Res> {
  __$$AvailableLanguagesResponseImplCopyWithImpl(
      _$AvailableLanguagesResponseImpl _value,
      $Res Function(_$AvailableLanguagesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$AvailableLanguagesResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LanguageEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableLanguagesResponseImpl implements _AvailableLanguagesResponse {
  const _$AvailableLanguagesResponseImpl(
      {required this.status, required final List<LanguageEntity> data})
      : _data = data;

  factory _$AvailableLanguagesResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AvailableLanguagesResponseImplFromJson(json);

  @override
  final String status;
  final List<LanguageEntity> _data;
  @override
  List<LanguageEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AvailableLanguagesResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableLanguagesResponseImpl &&
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
  _$$AvailableLanguagesResponseImplCopyWith<_$AvailableLanguagesResponseImpl>
      get copyWith => __$$AvailableLanguagesResponseImplCopyWithImpl<
          _$AvailableLanguagesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableLanguagesResponseImplToJson(
      this,
    );
  }
}

abstract class _AvailableLanguagesResponse
    implements AvailableLanguagesResponse {
  const factory _AvailableLanguagesResponse(
          {required final String status,
          required final List<LanguageEntity> data}) =
      _$AvailableLanguagesResponseImpl;

  factory _AvailableLanguagesResponse.fromJson(Map<String, dynamic> json) =
      _$AvailableLanguagesResponseImpl.fromJson;

  @override
  String get status;
  @override
  List<LanguageEntity> get data;
  @override
  @JsonKey(ignore: true)
  _$$AvailableLanguagesResponseImplCopyWith<_$AvailableLanguagesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
