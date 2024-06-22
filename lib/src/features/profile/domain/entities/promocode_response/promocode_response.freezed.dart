// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promocode_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromocodeResponse _$PromocodeResponseFromJson(Map<String, dynamic> json) {
  return _PromocodeResponse.fromJson(json);
}

/// @nodoc
mixin _$PromocodeResponse {
  bool get success => throw _privateConstructorUsedError;
  PromocodeEntity get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromocodeResponseCopyWith<PromocodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromocodeResponseCopyWith<$Res> {
  factory $PromocodeResponseCopyWith(
          PromocodeResponse value, $Res Function(PromocodeResponse) then) =
      _$PromocodeResponseCopyWithImpl<$Res, PromocodeResponse>;
  @useResult
  $Res call({bool success, PromocodeEntity data});

  $PromocodeEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$PromocodeResponseCopyWithImpl<$Res, $Val extends PromocodeResponse>
    implements $PromocodeResponseCopyWith<$Res> {
  _$PromocodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PromocodeEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PromocodeEntityCopyWith<$Res> get data {
    return $PromocodeEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PromocodeResponseImplCopyWith<$Res>
    implements $PromocodeResponseCopyWith<$Res> {
  factory _$$PromocodeResponseImplCopyWith(_$PromocodeResponseImpl value,
          $Res Function(_$PromocodeResponseImpl) then) =
      __$$PromocodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, PromocodeEntity data});

  @override
  $PromocodeEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$PromocodeResponseImplCopyWithImpl<$Res>
    extends _$PromocodeResponseCopyWithImpl<$Res, _$PromocodeResponseImpl>
    implements _$$PromocodeResponseImplCopyWith<$Res> {
  __$$PromocodeResponseImplCopyWithImpl(_$PromocodeResponseImpl _value,
      $Res Function(_$PromocodeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$PromocodeResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PromocodeEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromocodeResponseImpl implements _PromocodeResponse {
  const _$PromocodeResponseImpl({required this.success, required this.data});

  factory _$PromocodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromocodeResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final PromocodeEntity data;

  @override
  String toString() {
    return 'PromocodeResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromocodeResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromocodeResponseImplCopyWith<_$PromocodeResponseImpl> get copyWith =>
      __$$PromocodeResponseImplCopyWithImpl<_$PromocodeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromocodeResponseImplToJson(
      this,
    );
  }
}

abstract class _PromocodeResponse implements PromocodeResponse {
  const factory _PromocodeResponse(
      {required final bool success,
      required final PromocodeEntity data}) = _$PromocodeResponseImpl;

  factory _PromocodeResponse.fromJson(Map<String, dynamic> json) =
      _$PromocodeResponseImpl.fromJson;

  @override
  bool get success;
  @override
  PromocodeEntity get data;
  @override
  @JsonKey(ignore: true)
  _$$PromocodeResponseImplCopyWith<_$PromocodeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
