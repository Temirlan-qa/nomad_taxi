// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tariff_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TariffEntity _$TariffEntityFromJson(Map<String, dynamic> json) {
  return _TariffEntity.fromJson(json);
}

/// @nodoc
mixin _$TariffEntity {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get commission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TariffEntityCopyWith<TariffEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TariffEntityCopyWith<$Res> {
  factory $TariffEntityCopyWith(
          TariffEntity value, $Res Function(TariffEntity) then) =
      _$TariffEntityCopyWithImpl<$Res, TariffEntity>;
  @useResult
  $Res call({String title, String description, int commission});
}

/// @nodoc
class _$TariffEntityCopyWithImpl<$Res, $Val extends TariffEntity>
    implements $TariffEntityCopyWith<$Res> {
  _$TariffEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$TariffEntityImplCopyWith<$Res>
    implements $TariffEntityCopyWith<$Res> {
  factory _$$TariffEntityImplCopyWith(
          _$TariffEntityImpl value, $Res Function(_$TariffEntityImpl) then) =
      __$$TariffEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, int commission});
}

/// @nodoc
class __$$TariffEntityImplCopyWithImpl<$Res>
    extends _$TariffEntityCopyWithImpl<$Res, _$TariffEntityImpl>
    implements _$$TariffEntityImplCopyWith<$Res> {
  __$$TariffEntityImplCopyWithImpl(
      _$TariffEntityImpl _value, $Res Function(_$TariffEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? commission = null,
  }) {
    return _then(_$TariffEntityImpl(
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
class _$TariffEntityImpl implements _TariffEntity {
  const _$TariffEntityImpl(
      {required this.title,
      required this.description,
      required this.commission});

  factory _$TariffEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TariffEntityImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final int commission;

  @override
  String toString() {
    return 'TariffEntity(title: $title, description: $description, commission: $commission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TariffEntityImpl &&
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
  _$$TariffEntityImplCopyWith<_$TariffEntityImpl> get copyWith =>
      __$$TariffEntityImplCopyWithImpl<_$TariffEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TariffEntityImplToJson(
      this,
    );
  }
}

abstract class _TariffEntity implements TariffEntity {
  const factory _TariffEntity(
      {required final String title,
      required final String description,
      required final int commission}) = _$TariffEntityImpl;

  factory _TariffEntity.fromJson(Map<String, dynamic> json) =
      _$TariffEntityImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  int get commission;
  @override
  @JsonKey(ignore: true)
  _$$TariffEntityImplCopyWith<_$TariffEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
