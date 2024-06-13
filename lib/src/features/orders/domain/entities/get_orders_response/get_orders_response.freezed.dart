// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_orders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetOrdersResponse _$GetOrdersResponseFromJson(Map<String, dynamic> json) {
  return _GetOrdersResponse.fromJson(json);
}

/// @nodoc
mixin _$GetOrdersResponse {
  String get status => throw _privateConstructorUsedError;
  List<dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrdersResponseCopyWith<GetOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrdersResponseCopyWith<$Res> {
  factory $GetOrdersResponseCopyWith(
          GetOrdersResponse value, $Res Function(GetOrdersResponse) then) =
      _$GetOrdersResponseCopyWithImpl<$Res, GetOrdersResponse>;
  @useResult
  $Res call({String status, List<dynamic> data});
}

/// @nodoc
class _$GetOrdersResponseCopyWithImpl<$Res, $Val extends GetOrdersResponse>
    implements $GetOrdersResponseCopyWith<$Res> {
  _$GetOrdersResponseCopyWithImpl(this._value, this._then);

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
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetOrdersResponseImplCopyWith<$Res>
    implements $GetOrdersResponseCopyWith<$Res> {
  factory _$$GetOrdersResponseImplCopyWith(_$GetOrdersResponseImpl value,
          $Res Function(_$GetOrdersResponseImpl) then) =
      __$$GetOrdersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, List<dynamic> data});
}

/// @nodoc
class __$$GetOrdersResponseImplCopyWithImpl<$Res>
    extends _$GetOrdersResponseCopyWithImpl<$Res, _$GetOrdersResponseImpl>
    implements _$$GetOrdersResponseImplCopyWith<$Res> {
  __$$GetOrdersResponseImplCopyWithImpl(_$GetOrdersResponseImpl _value,
      $Res Function(_$GetOrdersResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$GetOrdersResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOrdersResponseImpl implements _GetOrdersResponse {
  const _$GetOrdersResponseImpl(
      {required this.status, required final List<dynamic> data})
      : _data = data;

  factory _$GetOrdersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOrdersResponseImplFromJson(json);

  @override
  final String status;
  final List<dynamic> _data;
  @override
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetOrdersResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrdersResponseImpl &&
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
  _$$GetOrdersResponseImplCopyWith<_$GetOrdersResponseImpl> get copyWith =>
      __$$GetOrdersResponseImplCopyWithImpl<_$GetOrdersResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOrdersResponseImplToJson(
      this,
    );
  }
}

abstract class _GetOrdersResponse implements GetOrdersResponse {
  const factory _GetOrdersResponse(
      {required final String status,
      required final List<dynamic> data}) = _$GetOrdersResponseImpl;

  factory _GetOrdersResponse.fromJson(Map<String, dynamic> json) =
      _$GetOrdersResponseImpl.fromJson;

  @override
  String get status;
  @override
  List<dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$GetOrdersResponseImplCopyWith<_$GetOrdersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
