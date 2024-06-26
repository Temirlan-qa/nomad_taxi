// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tariff_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TariffDto _$TariffDtoFromJson(Map<String, dynamic> json) {
  return _TariffDto.fromJson(json);
}

/// @nodoc
mixin _$TariffDto {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get commission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TariffDtoCopyWith<TariffDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TariffDtoCopyWith<$Res> {
  factory $TariffDtoCopyWith(TariffDto value, $Res Function(TariffDto) then) =
      _$TariffDtoCopyWithImpl<$Res, TariffDto>;
  @useResult
  $Res call({String title, String description, int commission});
}

/// @nodoc
class _$TariffDtoCopyWithImpl<$Res, $Val extends TariffDto>
    implements $TariffDtoCopyWith<$Res> {
  _$TariffDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? commission = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      commission: null == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TariffDtoImplCopyWith<$Res>
    implements $TariffDtoCopyWith<$Res> {
  factory _$$TariffDtoImplCopyWith(
          _$TariffDtoImpl value, $Res Function(_$TariffDtoImpl) then) =
      __$$TariffDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, int commission});
}

/// @nodoc
class __$$TariffDtoImplCopyWithImpl<$Res>
    extends _$TariffDtoCopyWithImpl<$Res, _$TariffDtoImpl>
    implements _$$TariffDtoImplCopyWith<$Res> {
  __$$TariffDtoImplCopyWithImpl(
      _$TariffDtoImpl _value, $Res Function(_$TariffDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? commission = null,
  }) {
    return _then(_$TariffDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      commission: null == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TariffDtoImpl implements _TariffDto {
  const _$TariffDtoImpl(
      {required this.title,
      required this.description,
      required this.commission});

  factory _$TariffDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TariffDtoImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final int commission;

  @override
  String toString() {
    return 'TariffDto(title: $title, description: $description, commission: $commission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TariffDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.commission, commission) ||
                other.commission == commission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, commission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TariffDtoImplCopyWith<_$TariffDtoImpl> get copyWith =>
      __$$TariffDtoImplCopyWithImpl<_$TariffDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TariffDtoImplToJson(
      this,
    );
  }
}

abstract class _TariffDto implements TariffDto {
  const factory _TariffDto(
      {required final String title,
      required final String description,
      required final int commission}) = _$TariffDtoImpl;

  factory _TariffDto.fromJson(Map<String, dynamic> json) =
      _$TariffDtoImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  int get commission;
  @override
  @JsonKey(ignore: true)
  _$$TariffDtoImplCopyWith<_$TariffDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
