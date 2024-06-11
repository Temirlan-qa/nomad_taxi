// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_socket_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebSocketDto _$WebSocketDtoFromJson(Map<String, dynamic> json) {
  return _WebSocketDto.fromJson(json);
}

/// @nodoc
mixin _$WebSocketDto {
  String get event => throw _privateConstructorUsedError;
  OrderStatusDataDto get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebSocketDtoCopyWith<WebSocketDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSocketDtoCopyWith<$Res> {
  factory $WebSocketDtoCopyWith(
          WebSocketDto value, $Res Function(WebSocketDto) then) =
      _$WebSocketDtoCopyWithImpl<$Res, WebSocketDto>;
  @useResult
  $Res call({String event, OrderStatusDataDto data});

  $OrderStatusDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$WebSocketDtoCopyWithImpl<$Res, $Val extends WebSocketDto>
    implements $WebSocketDtoCopyWith<$Res> {
  _$WebSocketDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderStatusDataDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderStatusDataDtoCopyWith<$Res> get data {
    return $OrderStatusDataDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebSocketDtoImplCopyWith<$Res>
    implements $WebSocketDtoCopyWith<$Res> {
  factory _$$WebSocketDtoImplCopyWith(
          _$WebSocketDtoImpl value, $Res Function(_$WebSocketDtoImpl) then) =
      __$$WebSocketDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String event, OrderStatusDataDto data});

  @override
  $OrderStatusDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$WebSocketDtoImplCopyWithImpl<$Res>
    extends _$WebSocketDtoCopyWithImpl<$Res, _$WebSocketDtoImpl>
    implements _$$WebSocketDtoImplCopyWith<$Res> {
  __$$WebSocketDtoImplCopyWithImpl(
      _$WebSocketDtoImpl _value, $Res Function(_$WebSocketDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_$WebSocketDtoImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderStatusDataDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketDtoImpl implements _WebSocketDto {
  _$WebSocketDtoImpl({required this.event, required this.data});

  factory _$WebSocketDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketDtoImplFromJson(json);

  @override
  final String event;
  @override
  final OrderStatusDataDto data;

  @override
  String toString() {
    return 'WebSocketDto(event: $event, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketDtoImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, event, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketDtoImplCopyWith<_$WebSocketDtoImpl> get copyWith =>
      __$$WebSocketDtoImplCopyWithImpl<_$WebSocketDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketDtoImplToJson(
      this,
    );
  }
}

abstract class _WebSocketDto implements WebSocketDto {
  factory _WebSocketDto(
      {required final String event,
      required final OrderStatusDataDto data}) = _$WebSocketDtoImpl;

  factory _WebSocketDto.fromJson(Map<String, dynamic> json) =
      _$WebSocketDtoImpl.fromJson;

  @override
  String get event;
  @override
  OrderStatusDataDto get data;
  @override
  @JsonKey(ignore: true)
  _$$WebSocketDtoImplCopyWith<_$WebSocketDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
