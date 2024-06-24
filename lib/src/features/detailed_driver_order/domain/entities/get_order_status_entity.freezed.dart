// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_order_status_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetOrderStatusEntity _$GetOrderStatusEntityFromJson(Map<String, dynamic> json) {
  return _GetOrderStatusEntity.fromJson(json);
}

/// @nodoc
mixin _$GetOrderStatusEntity {
  int get orderId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrderStatusEntityCopyWith<GetOrderStatusEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderStatusEntityCopyWith<$Res> {
  factory $GetOrderStatusEntityCopyWith(GetOrderStatusEntity value,
          $Res Function(GetOrderStatusEntity) then) =
      _$GetOrderStatusEntityCopyWithImpl<$Res, GetOrderStatusEntity>;
  @useResult
  $Res call({int orderId, String status});
}

/// @nodoc
class _$GetOrderStatusEntityCopyWithImpl<$Res,
        $Val extends GetOrderStatusEntity>
    implements $GetOrderStatusEntityCopyWith<$Res> {
  _$GetOrderStatusEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetOrderStatusEntityImplCopyWith<$Res>
    implements $GetOrderStatusEntityCopyWith<$Res> {
  factory _$$GetOrderStatusEntityImplCopyWith(_$GetOrderStatusEntityImpl value,
          $Res Function(_$GetOrderStatusEntityImpl) then) =
      __$$GetOrderStatusEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int orderId, String status});
}

/// @nodoc
class __$$GetOrderStatusEntityImplCopyWithImpl<$Res>
    extends _$GetOrderStatusEntityCopyWithImpl<$Res, _$GetOrderStatusEntityImpl>
    implements _$$GetOrderStatusEntityImplCopyWith<$Res> {
  __$$GetOrderStatusEntityImplCopyWithImpl(_$GetOrderStatusEntityImpl _value,
      $Res Function(_$GetOrderStatusEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? status = null,
  }) {
    return _then(_$GetOrderStatusEntityImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOrderStatusEntityImpl implements _GetOrderStatusEntity {
  const _$GetOrderStatusEntityImpl(
      {required this.orderId, required this.status});

  factory _$GetOrderStatusEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOrderStatusEntityImplFromJson(json);

  @override
  final int orderId;
  @override
  final String status;

  @override
  String toString() {
    return 'GetOrderStatusEntity(orderId: $orderId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderStatusEntityImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderStatusEntityImplCopyWith<_$GetOrderStatusEntityImpl>
      get copyWith =>
          __$$GetOrderStatusEntityImplCopyWithImpl<_$GetOrderStatusEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOrderStatusEntityImplToJson(
      this,
    );
  }
}

abstract class _GetOrderStatusEntity implements GetOrderStatusEntity {
  const factory _GetOrderStatusEntity(
      {required final int orderId,
      required final String status}) = _$GetOrderStatusEntityImpl;

  factory _GetOrderStatusEntity.fromJson(Map<String, dynamic> json) =
      _$GetOrderStatusEntityImpl.fromJson;

  @override
  int get orderId;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$GetOrderStatusEntityImplCopyWith<_$GetOrderStatusEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
