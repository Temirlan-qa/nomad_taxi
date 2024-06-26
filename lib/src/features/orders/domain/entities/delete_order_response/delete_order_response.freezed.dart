// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteOrderResponse _$DeleteOrderResponseFromJson(Map<String, dynamic> json) {
  return _DeleteOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteOrderResponse {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteOrderResponseCopyWith<DeleteOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteOrderResponseCopyWith<$Res> {
  factory $DeleteOrderResponseCopyWith(
          DeleteOrderResponse value, $Res Function(DeleteOrderResponse) then) =
      _$DeleteOrderResponseCopyWithImpl<$Res, DeleteOrderResponse>;
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class _$DeleteOrderResponseCopyWithImpl<$Res, $Val extends DeleteOrderResponse>
    implements $DeleteOrderResponseCopyWith<$Res> {
  _$DeleteOrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteOrderResponseImplCopyWith<$Res>
    implements $DeleteOrderResponseCopyWith<$Res> {
  factory _$$DeleteOrderResponseImplCopyWith(_$DeleteOrderResponseImpl value,
          $Res Function(_$DeleteOrderResponseImpl) then) =
      __$$DeleteOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class __$$DeleteOrderResponseImplCopyWithImpl<$Res>
    extends _$DeleteOrderResponseCopyWithImpl<$Res, _$DeleteOrderResponseImpl>
    implements _$$DeleteOrderResponseImplCopyWith<$Res> {
  __$$DeleteOrderResponseImplCopyWithImpl(_$DeleteOrderResponseImpl _value,
      $Res Function(_$DeleteOrderResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$DeleteOrderResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteOrderResponseImpl implements _DeleteOrderResponse {
  const _$DeleteOrderResponseImpl(
      {required this.status, required this.message});

  factory _$DeleteOrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteOrderResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String message;

  @override
  String toString() {
    return 'DeleteOrderResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteOrderResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteOrderResponseImplCopyWith<_$DeleteOrderResponseImpl> get copyWith =>
      __$$DeleteOrderResponseImplCopyWithImpl<_$DeleteOrderResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteOrderResponse implements DeleteOrderResponse {
  const factory _DeleteOrderResponse(
      {required final String status,
      required final String message}) = _$DeleteOrderResponseImpl;

  factory _DeleteOrderResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteOrderResponseImpl.fromJson;

  @override
  String get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$DeleteOrderResponseImplCopyWith<_$DeleteOrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
