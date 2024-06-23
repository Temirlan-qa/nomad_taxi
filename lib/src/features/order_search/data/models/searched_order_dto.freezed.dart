// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searched_order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchedOrderDto _$SearchedOrderDtoFromJson(Map<String, dynamic> json) {
  return _SearchedOrderDto.fromJson(json);
}

/// @nodoc
mixin _$SearchedOrderDto {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<SearchedOrderAddressDto>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchedOrderDtoCopyWith<SearchedOrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedOrderDtoCopyWith<$Res> {
  factory $SearchedOrderDtoCopyWith(
          SearchedOrderDto value, $Res Function(SearchedOrderDto) then) =
      _$SearchedOrderDtoCopyWithImpl<$Res, SearchedOrderDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "data") List<SearchedOrderAddressDto>? data});
}

/// @nodoc
class _$SearchedOrderDtoCopyWithImpl<$Res, $Val extends SearchedOrderDto>
    implements $SearchedOrderDtoCopyWith<$Res> {
  _$SearchedOrderDtoCopyWithImpl(this._value, this._then);

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
              as List<SearchedOrderAddressDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchedOrderDtoImplCopyWith<$Res>
    implements $SearchedOrderDtoCopyWith<$Res> {
  factory _$$SearchedOrderDtoImplCopyWith(_$SearchedOrderDtoImpl value,
          $Res Function(_$SearchedOrderDtoImpl) then) =
      __$$SearchedOrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "data") List<SearchedOrderAddressDto>? data});
}

/// @nodoc
class __$$SearchedOrderDtoImplCopyWithImpl<$Res>
    extends _$SearchedOrderDtoCopyWithImpl<$Res, _$SearchedOrderDtoImpl>
    implements _$$SearchedOrderDtoImplCopyWith<$Res> {
  __$$SearchedOrderDtoImplCopyWithImpl(_$SearchedOrderDtoImpl _value,
      $Res Function(_$SearchedOrderDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SearchedOrderDtoImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchedOrderAddressDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchedOrderDtoImpl implements _SearchedOrderDto {
  const _$SearchedOrderDtoImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "data") final List<SearchedOrderAddressDto>? data})
      : _data = data;

  factory _$SearchedOrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchedOrderDtoImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  final List<SearchedOrderAddressDto>? _data;
  @override
  @JsonKey(name: "data")
  List<SearchedOrderAddressDto>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchedOrderDto(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedOrderDtoImpl &&
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
  _$$SearchedOrderDtoImplCopyWith<_$SearchedOrderDtoImpl> get copyWith =>
      __$$SearchedOrderDtoImplCopyWithImpl<_$SearchedOrderDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchedOrderDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchedOrderDto implements SearchedOrderDto {
  const factory _SearchedOrderDto(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "data") final List<SearchedOrderAddressDto>? data}) =
      _$SearchedOrderDtoImpl;

  factory _SearchedOrderDto.fromJson(Map<String, dynamic> json) =
      _$SearchedOrderDtoImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "data")
  List<SearchedOrderAddressDto>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchedOrderDtoImplCopyWith<_$SearchedOrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
