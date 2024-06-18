// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activate_promocode_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivatePromocodeRequest _$ActivatePromocodeRequestFromJson(
    Map<String, dynamic> json) {
  return _ActivatePromocodeRequest.fromJson(json);
}

/// @nodoc
mixin _$ActivatePromocodeRequest {
  @JsonKey(name: 'promocode')
  String get promocode => throw _privateConstructorUsedError;
  @JsonKey(name: 'town_id')
  int get townId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivatePromocodeRequestCopyWith<ActivatePromocodeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivatePromocodeRequestCopyWith<$Res> {
  factory $ActivatePromocodeRequestCopyWith(ActivatePromocodeRequest value,
          $Res Function(ActivatePromocodeRequest) then) =
      _$ActivatePromocodeRequestCopyWithImpl<$Res, ActivatePromocodeRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'promocode') String promocode,
      @JsonKey(name: 'town_id') int townId});
}

/// @nodoc
class _$ActivatePromocodeRequestCopyWithImpl<$Res,
        $Val extends ActivatePromocodeRequest>
    implements $ActivatePromocodeRequestCopyWith<$Res> {
  _$ActivatePromocodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocode = null,
    Object? townId = null,
  }) {
    return _then(_value.copyWith(
      promocode: null == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String,
      townId: null == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivatePromocodeRequestImplCopyWith<$Res>
    implements $ActivatePromocodeRequestCopyWith<$Res> {
  factory _$$ActivatePromocodeRequestImplCopyWith(
          _$ActivatePromocodeRequestImpl value,
          $Res Function(_$ActivatePromocodeRequestImpl) then) =
      __$$ActivatePromocodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'promocode') String promocode,
      @JsonKey(name: 'town_id') int townId});
}

/// @nodoc
class __$$ActivatePromocodeRequestImplCopyWithImpl<$Res>
    extends _$ActivatePromocodeRequestCopyWithImpl<$Res,
        _$ActivatePromocodeRequestImpl>
    implements _$$ActivatePromocodeRequestImplCopyWith<$Res> {
  __$$ActivatePromocodeRequestImplCopyWithImpl(
      _$ActivatePromocodeRequestImpl _value,
      $Res Function(_$ActivatePromocodeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocode = null,
    Object? townId = null,
  }) {
    return _then(_$ActivatePromocodeRequestImpl(
      promocode: null == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String,
      townId: null == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivatePromocodeRequestImpl implements _ActivatePromocodeRequest {
  const _$ActivatePromocodeRequestImpl(
      {@JsonKey(name: 'promocode') required this.promocode,
      @JsonKey(name: 'town_id') required this.townId});

  factory _$ActivatePromocodeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivatePromocodeRequestImplFromJson(json);

  @override
  @JsonKey(name: 'promocode')
  final String promocode;
  @override
  @JsonKey(name: 'town_id')
  final int townId;

  @override
  String toString() {
    return 'ActivatePromocodeRequest(promocode: $promocode, townId: $townId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivatePromocodeRequestImpl &&
            (identical(other.promocode, promocode) ||
                other.promocode == promocode) &&
            (identical(other.townId, townId) || other.townId == townId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, promocode, townId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivatePromocodeRequestImplCopyWith<_$ActivatePromocodeRequestImpl>
      get copyWith => __$$ActivatePromocodeRequestImplCopyWithImpl<
          _$ActivatePromocodeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivatePromocodeRequestImplToJson(
      this,
    );
  }
}

abstract class _ActivatePromocodeRequest implements ActivatePromocodeRequest {
  const factory _ActivatePromocodeRequest(
          {@JsonKey(name: 'promocode') required final String promocode,
          @JsonKey(name: 'town_id') required final int townId}) =
      _$ActivatePromocodeRequestImpl;

  factory _ActivatePromocodeRequest.fromJson(Map<String, dynamic> json) =
      _$ActivatePromocodeRequestImpl.fromJson;

  @override
  @JsonKey(name: 'promocode')
  String get promocode;
  @override
  @JsonKey(name: 'town_id')
  int get townId;
  @override
  @JsonKey(ignore: true)
  _$$ActivatePromocodeRequestImplCopyWith<_$ActivatePromocodeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
