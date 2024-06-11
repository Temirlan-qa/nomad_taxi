// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inside_city_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InsideCityDto _$InsideCityDtoFromJson(Map<String, dynamic> json) {
  return _InsideCityDto.fromJson(json);
}

/// @nodoc
mixin _$InsideCityDto {
  @JsonKey(name: 'min_price')
  int get minPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_price')
  int get maxPrice => throw _privateConstructorUsedError;
  int get commission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsideCityDtoCopyWith<InsideCityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsideCityDtoCopyWith<$Res> {
  factory $InsideCityDtoCopyWith(
          InsideCityDto value, $Res Function(InsideCityDto) then) =
      _$InsideCityDtoCopyWithImpl<$Res, InsideCityDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'min_price') int minPrice,
      @JsonKey(name: 'max_price') int maxPrice,
      int commission});
}

/// @nodoc
class _$InsideCityDtoCopyWithImpl<$Res, $Val extends InsideCityDto>
    implements $InsideCityDtoCopyWith<$Res> {
  _$InsideCityDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? commission = null,
  }) {
    return _then(_value.copyWith(
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
      commission: null == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsideCityDtoImplCopyWith<$Res>
    implements $InsideCityDtoCopyWith<$Res> {
  factory _$$InsideCityDtoImplCopyWith(
          _$InsideCityDtoImpl value, $Res Function(_$InsideCityDtoImpl) then) =
      __$$InsideCityDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'min_price') int minPrice,
      @JsonKey(name: 'max_price') int maxPrice,
      int commission});
}

/// @nodoc
class __$$InsideCityDtoImplCopyWithImpl<$Res>
    extends _$InsideCityDtoCopyWithImpl<$Res, _$InsideCityDtoImpl>
    implements _$$InsideCityDtoImplCopyWith<$Res> {
  __$$InsideCityDtoImplCopyWithImpl(
      _$InsideCityDtoImpl _value, $Res Function(_$InsideCityDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? commission = null,
  }) {
    return _then(_$InsideCityDtoImpl(
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
      commission: null == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsideCityDtoImpl implements _InsideCityDto {
  const _$InsideCityDtoImpl(
      {@JsonKey(name: 'min_price') required this.minPrice,
      @JsonKey(name: 'max_price') required this.maxPrice,
      required this.commission});

  factory _$InsideCityDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsideCityDtoImplFromJson(json);

  @override
  @JsonKey(name: 'min_price')
  final int minPrice;
  @override
  @JsonKey(name: 'max_price')
  final int maxPrice;
  @override
  final int commission;

  @override
  String toString() {
    return 'InsideCityDto(minPrice: $minPrice, maxPrice: $maxPrice, commission: $commission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsideCityDtoImpl &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.commission, commission) ||
                other.commission == commission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minPrice, maxPrice, commission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsideCityDtoImplCopyWith<_$InsideCityDtoImpl> get copyWith =>
      __$$InsideCityDtoImplCopyWithImpl<_$InsideCityDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsideCityDtoImplToJson(
      this,
    );
  }
}

abstract class _InsideCityDto implements InsideCityDto {
  const factory _InsideCityDto(
      {@JsonKey(name: 'min_price') required final int minPrice,
      @JsonKey(name: 'max_price') required final int maxPrice,
      required final int commission}) = _$InsideCityDtoImpl;

  factory _InsideCityDto.fromJson(Map<String, dynamic> json) =
      _$InsideCityDtoImpl.fromJson;

  @override
  @JsonKey(name: 'min_price')
  int get minPrice;
  @override
  @JsonKey(name: 'max_price')
  int get maxPrice;
  @override
  int get commission;
  @override
  @JsonKey(ignore: true)
  _$$InsideCityDtoImplCopyWith<_$InsideCityDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
