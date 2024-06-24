// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searched_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchedOrderEntity _$SearchedOrderEntityFromJson(Map<String, dynamic> json) {
  return _SearchedOrderEntity.fromJson(json);
}

/// @nodoc
mixin _$SearchedOrderEntity {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<SearchedOrderAddressEntity>? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchedOrderEntityCopyWith<SearchedOrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedOrderEntityCopyWith<$Res> {
  factory $SearchedOrderEntityCopyWith(
          SearchedOrderEntity value, $Res Function(SearchedOrderEntity) then) =
      _$SearchedOrderEntityCopyWithImpl<$Res, SearchedOrderEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "data") List<SearchedOrderAddressEntity>? data});
}

/// @nodoc
class _$SearchedOrderEntityCopyWithImpl<$Res, $Val extends SearchedOrderEntity>
    implements $SearchedOrderEntityCopyWith<$Res> {
  _$SearchedOrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchedOrderAddressEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchedOrderEntityImplCopyWith<$Res>
    implements $SearchedOrderEntityCopyWith<$Res> {
  factory _$$SearchedOrderEntityImplCopyWith(_$SearchedOrderEntityImpl value,
          $Res Function(_$SearchedOrderEntityImpl) then) =
      __$$SearchedOrderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "data") List<SearchedOrderAddressEntity>? data});
}

/// @nodoc
class __$$SearchedOrderEntityImplCopyWithImpl<$Res>
    extends _$SearchedOrderEntityCopyWithImpl<$Res, _$SearchedOrderEntityImpl>
    implements _$$SearchedOrderEntityImplCopyWith<$Res> {
  __$$SearchedOrderEntityImplCopyWithImpl(_$SearchedOrderEntityImpl _value,
      $Res Function(_$SearchedOrderEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SearchedOrderEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchedOrderAddressEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchedOrderEntityImpl implements _SearchedOrderEntity {
  const _$SearchedOrderEntityImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "data") final List<SearchedOrderAddressEntity>? data})
      : _data = data;

  factory _$SearchedOrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchedOrderEntityImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  final List<SearchedOrderAddressEntity>? _data;
  @override
  @JsonKey(name: "data")
  List<SearchedOrderAddressEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchedOrderEntity(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedOrderEntityImpl &&
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
  _$$SearchedOrderEntityImplCopyWith<_$SearchedOrderEntityImpl> get copyWith =>
      __$$SearchedOrderEntityImplCopyWithImpl<_$SearchedOrderEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchedOrderEntityImplToJson(
      this,
    );
  }
}

abstract class _SearchedOrderEntity implements SearchedOrderEntity {
  const factory _SearchedOrderEntity(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "data")
          final List<SearchedOrderAddressEntity>? data}) =
      _$SearchedOrderEntityImpl;

  factory _SearchedOrderEntity.fromJson(Map<String, dynamic> json) =
      _$SearchedOrderEntityImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "data")
  List<SearchedOrderAddressEntity>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchedOrderEntityImplCopyWith<_$SearchedOrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
