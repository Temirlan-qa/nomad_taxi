// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Partner _$PartnerFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _Partner.fromJson(json);
    case 'empty':
      return _PartnerEmpty.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Partner',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Partner {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'first_name') String firstName,
            @JsonKey(name: 'last_name') String lastName,
            String phone,
            @JsonKey(name: 'bank_card_number') String? bankCardNumber,
            @JsonKey(name: 'car_model') String carModel,
            @JsonKey(name: 'car_number') String carNumber)
        $default, {
    required TResult Function(bool empty, bool sorted, bool unsorted) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'first_name') String firstName,
            @JsonKey(name: 'last_name') String lastName,
            String phone,
            @JsonKey(name: 'bank_card_number') String? bankCardNumber,
            @JsonKey(name: 'car_model') String carModel,
            @JsonKey(name: 'car_number') String carNumber)?
        $default, {
    TResult? Function(bool empty, bool sorted, bool unsorted)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'first_name') String firstName,
            @JsonKey(name: 'last_name') String lastName,
            String phone,
            @JsonKey(name: 'bank_card_number') String? bankCardNumber,
            @JsonKey(name: 'car_model') String carModel,
            @JsonKey(name: 'car_number') String carNumber)?
        $default, {
    TResult Function(bool empty, bool sorted, bool unsorted)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Partner value) $default, {
    required TResult Function(_PartnerEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Partner value)? $default, {
    TResult? Function(_PartnerEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Partner value)? $default, {
    TResult Function(_PartnerEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerCopyWith<$Res> {
  factory $PartnerCopyWith(Partner value, $Res Function(Partner) then) =
      _$PartnerCopyWithImpl<$Res, Partner>;
}

/// @nodoc
class _$PartnerCopyWithImpl<$Res, $Val extends Partner>
    implements $PartnerCopyWith<$Res> {
  _$PartnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PartnerImplCopyWith<$Res> {
  factory _$$PartnerImplCopyWith(
          _$PartnerImpl value, $Res Function(_$PartnerImpl) then) =
      __$$PartnerImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String phone,
      @JsonKey(name: 'bank_card_number') String? bankCardNumber,
      @JsonKey(name: 'car_model') String carModel,
      @JsonKey(name: 'car_number') String carNumber});
}

/// @nodoc
class __$$PartnerImplCopyWithImpl<$Res>
    extends _$PartnerCopyWithImpl<$Res, _$PartnerImpl>
    implements _$$PartnerImplCopyWith<$Res> {
  __$$PartnerImplCopyWithImpl(
      _$PartnerImpl _value, $Res Function(_$PartnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? bankCardNumber = freezed,
    Object? carModel = null,
    Object? carNumber = null,
  }) {
    return _then(_$PartnerImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      bankCardNumber: freezed == bankCardNumber
          ? _value.bankCardNumber
          : bankCardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      carModel: null == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as String,
      carNumber: null == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartnerImpl implements _Partner {
  const _$PartnerImpl(
      {@JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      required this.phone,
      @JsonKey(name: 'bank_card_number') this.bankCardNumber,
      @JsonKey(name: 'car_model') required this.carModel,
      @JsonKey(name: 'car_number') required this.carNumber,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$PartnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnerImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String phone;
  @override
  @JsonKey(name: 'bank_card_number')
  final String? bankCardNumber;
  @override
  @JsonKey(name: 'car_model')
  final String carModel;
  @override
  @JsonKey(name: 'car_number')
  final String carNumber;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Partner(firstName: $firstName, lastName: $lastName, phone: $phone, bankCardNumber: $bankCardNumber, carModel: $carModel, carNumber: $carNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.bankCardNumber, bankCardNumber) ||
                other.bankCardNumber == bankCardNumber) &&
            (identical(other.carModel, carModel) ||
                other.carModel == carModel) &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, phone,
      bankCardNumber, carModel, carNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnerImplCopyWith<_$PartnerImpl> get copyWith =>
      __$$PartnerImplCopyWithImpl<_$PartnerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'first_name') String firstName,
            @JsonKey(name: 'last_name') String lastName,
            String phone,
            @JsonKey(name: 'bank_card_number') String? bankCardNumber,
            @JsonKey(name: 'car_model') String carModel,
            @JsonKey(name: 'car_number') String carNumber)
        $default, {
    required TResult Function(bool empty, bool sorted, bool unsorted) empty,
  }) {
    return $default(
        firstName, lastName, phone, bankCardNumber, carModel, carNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'first_name') String firstName,
            @JsonKey(name: 'last_name') String lastName,
            String phone,
            @JsonKey(name: 'bank_card_number') String? bankCardNumber,
            @JsonKey(name: 'car_model') String carModel,
            @JsonKey(name: 'car_number') String carNumber)?
        $default, {
    TResult? Function(bool empty, bool sorted, bool unsorted)? empty,
  }) {
    return $default?.call(
        firstName, lastName, phone, bankCardNumber, carModel, carNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'first_name') String firstName,
            @JsonKey(name: 'last_name') String lastName,
            String phone,
            @JsonKey(name: 'bank_card_number') String? bankCardNumber,
            @JsonKey(name: 'car_model') String carModel,
            @JsonKey(name: 'car_number') String carNumber)?
        $default, {
    TResult Function(bool empty, bool sorted, bool unsorted)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          firstName, lastName, phone, bankCardNumber, carModel, carNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Partner value) $default, {
    required TResult Function(_PartnerEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Partner value)? $default, {
    TResult? Function(_PartnerEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Partner value)? $default, {
    TResult Function(_PartnerEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnerImplToJson(
      this,
    );
  }
}

abstract class _Partner implements Partner {
  const factory _Partner(
          {@JsonKey(name: 'first_name') required final String firstName,
          @JsonKey(name: 'last_name') required final String lastName,
          required final String phone,
          @JsonKey(name: 'bank_card_number') final String? bankCardNumber,
          @JsonKey(name: 'car_model') required final String carModel,
          @JsonKey(name: 'car_number') required final String carNumber}) =
      _$PartnerImpl;

  factory _Partner.fromJson(Map<String, dynamic> json) = _$PartnerImpl.fromJson;

  @JsonKey(name: 'first_name')
  String get firstName;
  @JsonKey(name: 'last_name')
  String get lastName;
  String get phone;
  @JsonKey(name: 'bank_card_number')
  String? get bankCardNumber;
  @JsonKey(name: 'car_model')
  String get carModel;
  @JsonKey(name: 'car_number')
  String get carNumber;
  @JsonKey(ignore: true)
  _$$PartnerImplCopyWith<_$PartnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PartnerEmptyImplCopyWith<$Res> {
  factory _$$PartnerEmptyImplCopyWith(
          _$PartnerEmptyImpl value, $Res Function(_$PartnerEmptyImpl) then) =
      __$$PartnerEmptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool empty, bool sorted, bool unsorted});
}

/// @nodoc
class __$$PartnerEmptyImplCopyWithImpl<$Res>
    extends _$PartnerCopyWithImpl<$Res, _$PartnerEmptyImpl>
    implements _$$PartnerEmptyImplCopyWith<$Res> {
  __$$PartnerEmptyImplCopyWithImpl(
      _$PartnerEmptyImpl _value, $Res Function(_$PartnerEmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empty = null,
    Object? sorted = null,
    Object? unsorted = null,
  }) {
    return _then(_$PartnerEmptyImpl(
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartnerEmptyImpl implements _PartnerEmpty {
  const _$PartnerEmptyImpl(
      {this.empty = false,
      this.sorted = false,
      this.unsorted = false,
      final String? $type})
      : $type = $type ?? 'empty';

  factory _$PartnerEmptyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnerEmptyImplFromJson(json);

  @override
  @JsonKey()
  final bool empty;
  @override
  @JsonKey()
  final bool sorted;
  @override
  @JsonKey()
  final bool unsorted;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Partner.empty(empty: $empty, sorted: $sorted, unsorted: $unsorted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerEmptyImpl &&
            (identical(other.empty, empty) || other.empty == empty) &&
            (identical(other.sorted, sorted) || other.sorted == sorted) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, empty, sorted, unsorted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnerEmptyImplCopyWith<_$PartnerEmptyImpl> get copyWith =>
      __$$PartnerEmptyImplCopyWithImpl<_$PartnerEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'first_name') String firstName,
            @JsonKey(name: 'last_name') String lastName,
            String phone,
            @JsonKey(name: 'bank_card_number') String? bankCardNumber,
            @JsonKey(name: 'car_model') String carModel,
            @JsonKey(name: 'car_number') String carNumber)
        $default, {
    required TResult Function(bool empty, bool sorted, bool unsorted) empty,
  }) {
    return empty(this.empty, sorted, unsorted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'first_name') String firstName,
            @JsonKey(name: 'last_name') String lastName,
            String phone,
            @JsonKey(name: 'bank_card_number') String? bankCardNumber,
            @JsonKey(name: 'car_model') String carModel,
            @JsonKey(name: 'car_number') String carNumber)?
        $default, {
    TResult? Function(bool empty, bool sorted, bool unsorted)? empty,
  }) {
    return empty?.call(this.empty, sorted, unsorted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'first_name') String firstName,
            @JsonKey(name: 'last_name') String lastName,
            String phone,
            @JsonKey(name: 'bank_card_number') String? bankCardNumber,
            @JsonKey(name: 'car_model') String carModel,
            @JsonKey(name: 'car_number') String carNumber)?
        $default, {
    TResult Function(bool empty, bool sorted, bool unsorted)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this.empty, sorted, unsorted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Partner value) $default, {
    required TResult Function(_PartnerEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Partner value)? $default, {
    TResult? Function(_PartnerEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Partner value)? $default, {
    TResult Function(_PartnerEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnerEmptyImplToJson(
      this,
    );
  }
}

abstract class _PartnerEmpty implements Partner {
  const factory _PartnerEmpty(
      {final bool empty,
      final bool sorted,
      final bool unsorted}) = _$PartnerEmptyImpl;

  factory _PartnerEmpty.fromJson(Map<String, dynamic> json) =
      _$PartnerEmptyImpl.fromJson;

  bool get empty;
  bool get sorted;
  bool get unsorted;
  @JsonKey(ignore: true)
  _$$PartnerEmptyImplCopyWith<_$PartnerEmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
