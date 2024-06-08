// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_orders_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetOrdersResponseDto _$GetOrdersResponseDtoFromJson(Map<String, dynamic> json) {
  return _GetOrdersResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetOrdersResponseDto {
  String get status => throw _privateConstructorUsedError;
  List<OrderDto> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrdersResponseDtoCopyWith<GetOrdersResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrdersResponseDtoCopyWith<$Res> {
  factory $GetOrdersResponseDtoCopyWith(GetOrdersResponseDto value,
          $Res Function(GetOrdersResponseDto) then) =
      _$GetOrdersResponseDtoCopyWithImpl<$Res, GetOrdersResponseDto>;
  @useResult
  $Res call({String status, List<OrderDto> data});
}

/// @nodoc
class _$GetOrdersResponseDtoCopyWithImpl<$Res,
        $Val extends GetOrdersResponseDto>
    implements $GetOrdersResponseDtoCopyWith<$Res> {
  _$GetOrdersResponseDtoCopyWithImpl(this._value, this._then);

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
              as List<OrderDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetOrdersResponseDtoImplCopyWith<$Res>
    implements $GetOrdersResponseDtoCopyWith<$Res> {
  factory _$$GetOrdersResponseDtoImplCopyWith(_$GetOrdersResponseDtoImpl value,
          $Res Function(_$GetOrdersResponseDtoImpl) then) =
      __$$GetOrdersResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, List<OrderDto> data});
}

/// @nodoc
class __$$GetOrdersResponseDtoImplCopyWithImpl<$Res>
    extends _$GetOrdersResponseDtoCopyWithImpl<$Res, _$GetOrdersResponseDtoImpl>
    implements _$$GetOrdersResponseDtoImplCopyWith<$Res> {
  __$$GetOrdersResponseDtoImplCopyWithImpl(_$GetOrdersResponseDtoImpl _value,
      $Res Function(_$GetOrdersResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$GetOrdersResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrderDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOrdersResponseDtoImpl implements _GetOrdersResponseDto {
  const _$GetOrdersResponseDtoImpl(
      {required this.status, required final List<OrderDto> data})
      : _data = data;

  factory _$GetOrdersResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOrdersResponseDtoImplFromJson(json);

  @override
  final String status;
  final List<OrderDto> _data;
  @override
  List<OrderDto> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetOrdersResponseDto(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrdersResponseDtoImpl &&
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
  _$$GetOrdersResponseDtoImplCopyWith<_$GetOrdersResponseDtoImpl>
      get copyWith =>
          __$$GetOrdersResponseDtoImplCopyWithImpl<_$GetOrdersResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOrdersResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetOrdersResponseDto implements GetOrdersResponseDto {
  const factory _GetOrdersResponseDto(
      {required final String status,
      required final List<OrderDto> data}) = _$GetOrdersResponseDtoImpl;

  factory _GetOrdersResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetOrdersResponseDtoImpl.fromJson;

  @override
  String get status;
  @override
  List<OrderDto> get data;
  @override
  @JsonKey(ignore: true)
  _$$GetOrdersResponseDtoImplCopyWith<_$GetOrdersResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
