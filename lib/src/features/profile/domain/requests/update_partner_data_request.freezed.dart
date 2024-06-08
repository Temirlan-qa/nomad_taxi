// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_partner_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdatePartnerDataRequest _$UpdatePartnerDataRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdatePartnerDataRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdatePartnerDataRequest {
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'car_model')
  String get carModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'car_number')
  String get carNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'town_id')
  int get townId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePartnerDataRequestCopyWith<UpdatePartnerDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePartnerDataRequestCopyWith<$Res> {
  factory $UpdatePartnerDataRequestCopyWith(UpdatePartnerDataRequest value,
          $Res Function(UpdatePartnerDataRequest) then) =
      _$UpdatePartnerDataRequestCopyWithImpl<$Res, UpdatePartnerDataRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'car_model') String carModel,
      @JsonKey(name: 'car_number') String carNumber,
      @JsonKey(name: 'town_id') int townId});
}

/// @nodoc
class _$UpdatePartnerDataRequestCopyWithImpl<$Res,
        $Val extends UpdatePartnerDataRequest>
    implements $UpdatePartnerDataRequestCopyWith<$Res> {
  _$UpdatePartnerDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? carModel = null,
    Object? carNumber = null,
    Object? townId = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      carModel: null == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as String,
      carNumber: null == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as String,
      townId: null == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePartnerDataRequestImplCopyWith<$Res>
    implements $UpdatePartnerDataRequestCopyWith<$Res> {
  factory _$$UpdatePartnerDataRequestImplCopyWith(
          _$UpdatePartnerDataRequestImpl value,
          $Res Function(_$UpdatePartnerDataRequestImpl) then) =
      __$$UpdatePartnerDataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'car_model') String carModel,
      @JsonKey(name: 'car_number') String carNumber,
      @JsonKey(name: 'town_id') int townId});
}

/// @nodoc
class __$$UpdatePartnerDataRequestImplCopyWithImpl<$Res>
    extends _$UpdatePartnerDataRequestCopyWithImpl<$Res,
        _$UpdatePartnerDataRequestImpl>
    implements _$$UpdatePartnerDataRequestImplCopyWith<$Res> {
  __$$UpdatePartnerDataRequestImplCopyWithImpl(
      _$UpdatePartnerDataRequestImpl _value,
      $Res Function(_$UpdatePartnerDataRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? carModel = null,
    Object? carNumber = null,
    Object? townId = null,
  }) {
    return _then(_$UpdatePartnerDataRequestImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      carModel: null == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as String,
      carNumber: null == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
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
class _$UpdatePartnerDataRequestImpl implements _UpdatePartnerDataRequest {
  const _$UpdatePartnerDataRequestImpl(
      {@JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'car_model') required this.carModel,
      @JsonKey(name: 'car_number') required this.carNumber,
      @JsonKey(name: 'town_id') required this.townId});

  factory _$UpdatePartnerDataRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePartnerDataRequestImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'car_model')
  final String carModel;
  @override
  @JsonKey(name: 'car_number')
  final String carNumber;
  @override
  @JsonKey(name: 'town_id')
  final int townId;

  @override
  String toString() {
    return 'UpdatePartnerDataRequest(firstName: $firstName, lastName: $lastName, carModel: $carModel, carNumber: $carNumber, townId: $townId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePartnerDataRequestImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.carModel, carModel) ||
                other.carModel == carModel) &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber) &&
            (identical(other.townId, townId) || other.townId == townId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, carModel, carNumber, townId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePartnerDataRequestImplCopyWith<_$UpdatePartnerDataRequestImpl>
      get copyWith => __$$UpdatePartnerDataRequestImplCopyWithImpl<
          _$UpdatePartnerDataRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePartnerDataRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdatePartnerDataRequest implements UpdatePartnerDataRequest {
  const factory _UpdatePartnerDataRequest(
          {@JsonKey(name: 'first_name') required final String firstName,
          @JsonKey(name: 'last_name') required final String lastName,
          @JsonKey(name: 'car_model') required final String carModel,
          @JsonKey(name: 'car_number') required final String carNumber,
          @JsonKey(name: 'town_id') required final int townId}) =
      _$UpdatePartnerDataRequestImpl;

  factory _UpdatePartnerDataRequest.fromJson(Map<String, dynamic> json) =
      _$UpdatePartnerDataRequestImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'car_model')
  String get carModel;
  @override
  @JsonKey(name: 'car_number')
  String get carNumber;
  @override
  @JsonKey(name: 'town_id')
  int get townId;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePartnerDataRequestImplCopyWith<_$UpdatePartnerDataRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
