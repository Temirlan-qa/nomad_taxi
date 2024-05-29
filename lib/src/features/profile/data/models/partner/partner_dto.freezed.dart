// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartnerDto _$PartnerDtoFromJson(Map<String, dynamic> json) {
  return _PartnerDto.fromJson(json);
}

/// @nodoc
mixin _$PartnerDto {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'car_model')
  String? get carModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'car_number')
  String? get carNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'town_id')
  int? get townId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  FinanceDto? get finance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnerDtoCopyWith<PartnerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerDtoCopyWith<$Res> {
  factory $PartnerDtoCopyWith(
          PartnerDto value, $Res Function(PartnerDto) then) =
      _$PartnerDtoCopyWithImpl<$Res, PartnerDto>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'car_model') String? carModel,
      @JsonKey(name: 'car_number') String? carNumber,
      @JsonKey(name: 'town_id') int? townId,
      String? status,
      FinanceDto? finance});

  $FinanceDtoCopyWith<$Res>? get finance;
}

/// @nodoc
class _$PartnerDtoCopyWithImpl<$Res, $Val extends PartnerDto>
    implements $PartnerDtoCopyWith<$Res> {
  _$PartnerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? carModel = freezed,
    Object? carNumber = freezed,
    Object? townId = freezed,
    Object? status = freezed,
    Object? finance = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      carModel: freezed == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as String?,
      carNumber: freezed == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      townId: freezed == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      finance: freezed == finance
          ? _value.finance
          : finance // ignore: cast_nullable_to_non_nullable
              as FinanceDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FinanceDtoCopyWith<$Res>? get finance {
    if (_value.finance == null) {
      return null;
    }

    return $FinanceDtoCopyWith<$Res>(_value.finance!, (value) {
      return _then(_value.copyWith(finance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PartnerDtoImplCopyWith<$Res>
    implements $PartnerDtoCopyWith<$Res> {
  factory _$$PartnerDtoImplCopyWith(
          _$PartnerDtoImpl value, $Res Function(_$PartnerDtoImpl) then) =
      __$$PartnerDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'car_model') String? carModel,
      @JsonKey(name: 'car_number') String? carNumber,
      @JsonKey(name: 'town_id') int? townId,
      String? status,
      FinanceDto? finance});

  @override
  $FinanceDtoCopyWith<$Res>? get finance;
}

/// @nodoc
class __$$PartnerDtoImplCopyWithImpl<$Res>
    extends _$PartnerDtoCopyWithImpl<$Res, _$PartnerDtoImpl>
    implements _$$PartnerDtoImplCopyWith<$Res> {
  __$$PartnerDtoImplCopyWithImpl(
      _$PartnerDtoImpl _value, $Res Function(_$PartnerDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? carModel = freezed,
    Object? carNumber = freezed,
    Object? townId = freezed,
    Object? status = freezed,
    Object? finance = freezed,
  }) {
    return _then(_$PartnerDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      carModel: freezed == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as String?,
      carNumber: freezed == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      townId: freezed == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      finance: freezed == finance
          ? _value.finance
          : finance // ignore: cast_nullable_to_non_nullable
              as FinanceDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartnerDtoImpl implements _PartnerDto {
  const _$PartnerDtoImpl(
      {this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'car_model') this.carModel,
      @JsonKey(name: 'car_number') this.carNumber,
      @JsonKey(name: 'town_id') this.townId,
      this.status,
      this.finance});

  factory _$PartnerDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnerDtoImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'car_model')
  final String? carModel;
  @override
  @JsonKey(name: 'car_number')
  final String? carNumber;
  @override
  @JsonKey(name: 'town_id')
  final int? townId;
  @override
  final String? status;
  @override
  final FinanceDto? finance;

  @override
  String toString() {
    return 'PartnerDto(id: $id, firstName: $firstName, lastName: $lastName, carModel: $carModel, carNumber: $carNumber, townId: $townId, status: $status, finance: $finance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.carModel, carModel) ||
                other.carModel == carModel) &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber) &&
            (identical(other.townId, townId) || other.townId == townId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.finance, finance) || other.finance == finance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName,
      carModel, carNumber, townId, status, finance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnerDtoImplCopyWith<_$PartnerDtoImpl> get copyWith =>
      __$$PartnerDtoImplCopyWithImpl<_$PartnerDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnerDtoImplToJson(
      this,
    );
  }
}

abstract class _PartnerDto implements PartnerDto {
  const factory _PartnerDto(
      {final int? id,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'car_model') final String? carModel,
      @JsonKey(name: 'car_number') final String? carNumber,
      @JsonKey(name: 'town_id') final int? townId,
      final String? status,
      final FinanceDto? finance}) = _$PartnerDtoImpl;

  factory _PartnerDto.fromJson(Map<String, dynamic> json) =
      _$PartnerDtoImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'car_model')
  String? get carModel;
  @override
  @JsonKey(name: 'car_number')
  String? get carNumber;
  @override
  @JsonKey(name: 'town_id')
  int? get townId;
  @override
  String? get status;
  @override
  FinanceDto? get finance;
  @override
  @JsonKey(ignore: true)
  _$$PartnerDtoImplCopyWith<_$PartnerDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
