// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) {
  return _ProfileDto.fromJson(json);
}

/// @nodoc
mixin _$ProfileDto {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'language_code')
  String? get languageCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_blocked')
  int? get isBlocked => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcm_token')
  String? get fcmToken => throw _privateConstructorUsedError;
  int? get bonus => throw _privateConstructorUsedError;
  PartnerDto? get partner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDtoCopyWith<ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDtoCopyWith<$Res> {
  factory $ProfileDtoCopyWith(
          ProfileDto value, $Res Function(ProfileDto) then) =
      _$ProfileDtoCopyWithImpl<$Res, ProfileDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String phone,
      int id,
      @JsonKey(name: 'language_code') String? languageCode,
      @JsonKey(name: 'is_blocked') int? isBlocked,
      @JsonKey(name: 'fcm_token') String? fcmToken,
      int? bonus,
      PartnerDto? partner});

  $PartnerDtoCopyWith<$Res>? get partner;
}

/// @nodoc
class _$ProfileDtoCopyWithImpl<$Res, $Val extends ProfileDto>
    implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = null,
    Object? id = null,
    Object? languageCode = freezed,
    Object? isBlocked = freezed,
    Object? fcmToken = freezed,
    Object? bonus = freezed,
    Object? partner = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocked: freezed == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as int?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      bonus: freezed == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int?,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as PartnerDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PartnerDtoCopyWith<$Res>? get partner {
    if (_value.partner == null) {
      return null;
    }

    return $PartnerDtoCopyWith<$Res>(_value.partner!, (value) {
      return _then(_value.copyWith(partner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileDtoImplCopyWith<$Res>
    implements $ProfileDtoCopyWith<$Res> {
  factory _$$ProfileDtoImplCopyWith(
          _$ProfileDtoImpl value, $Res Function(_$ProfileDtoImpl) then) =
      __$$ProfileDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String phone,
      int id,
      @JsonKey(name: 'language_code') String? languageCode,
      @JsonKey(name: 'is_blocked') int? isBlocked,
      @JsonKey(name: 'fcm_token') String? fcmToken,
      int? bonus,
      PartnerDto? partner});

  @override
  $PartnerDtoCopyWith<$Res>? get partner;
}

/// @nodoc
class __$$ProfileDtoImplCopyWithImpl<$Res>
    extends _$ProfileDtoCopyWithImpl<$Res, _$ProfileDtoImpl>
    implements _$$ProfileDtoImplCopyWith<$Res> {
  __$$ProfileDtoImplCopyWithImpl(
      _$ProfileDtoImpl _value, $Res Function(_$ProfileDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = null,
    Object? id = null,
    Object? languageCode = freezed,
    Object? isBlocked = freezed,
    Object? fcmToken = freezed,
    Object? bonus = freezed,
    Object? partner = freezed,
  }) {
    return _then(_$ProfileDtoImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocked: freezed == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as int?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      bonus: freezed == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int?,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as PartnerDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDtoImpl implements _ProfileDto {
  const _$ProfileDtoImpl(
      {@JsonKey(name: 'first_name') this.firstName = '',
      @JsonKey(name: 'last_name') this.lastName = '',
      required this.phone,
      required this.id,
      @JsonKey(name: 'language_code') this.languageCode = 'ru',
      @JsonKey(name: 'is_blocked') this.isBlocked,
      @JsonKey(name: 'fcm_token') this.fcmToken,
      this.bonus,
      this.partner});

  factory _$ProfileDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDtoImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String phone;
  @override
  final int id;
  @override
  @JsonKey(name: 'language_code')
  final String? languageCode;
  @override
  @JsonKey(name: 'is_blocked')
  final int? isBlocked;
  @override
  @JsonKey(name: 'fcm_token')
  final String? fcmToken;
  @override
  final int? bonus;
  @override
  final PartnerDto? partner;

  @override
  String toString() {
    return 'ProfileDto(firstName: $firstName, lastName: $lastName, phone: $phone, id: $id, languageCode: $languageCode, isBlocked: $isBlocked, fcmToken: $fcmToken, bonus: $bonus, partner: $partner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDtoImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.partner, partner) || other.partner == partner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, phone, id,
      languageCode, isBlocked, fcmToken, bonus, partner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDtoImplCopyWith<_$ProfileDtoImpl> get copyWith =>
      __$$ProfileDtoImplCopyWithImpl<_$ProfileDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDtoImplToJson(
      this,
    );
  }
}

abstract class _ProfileDto implements ProfileDto {
  const factory _ProfileDto(
      {@JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      required final String phone,
      required final int id,
      @JsonKey(name: 'language_code') final String? languageCode,
      @JsonKey(name: 'is_blocked') final int? isBlocked,
      @JsonKey(name: 'fcm_token') final String? fcmToken,
      final int? bonus,
      final PartnerDto? partner}) = _$ProfileDtoImpl;

  factory _ProfileDto.fromJson(Map<String, dynamic> json) =
      _$ProfileDtoImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String get phone;
  @override
  int get id;
  @override
  @JsonKey(name: 'language_code')
  String? get languageCode;
  @override
  @JsonKey(name: 'is_blocked')
  int? get isBlocked;
  @override
  @JsonKey(name: 'fcm_token')
  String? get fcmToken;
  @override
  int? get bonus;
  @override
  PartnerDto? get partner;
  @override
  @JsonKey(ignore: true)
  _$$ProfileDtoImplCopyWith<_$ProfileDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
