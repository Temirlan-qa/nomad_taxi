// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Support _$SupportFromJson(Map<String, dynamic> json) {
  return _Support.fromJson(json);
}

/// @nodoc
mixin _$Support {
  String get phone => throw _privateConstructorUsedError;
  String get feedback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportCopyWith<Support> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportCopyWith<$Res> {
  factory $SupportCopyWith(Support value, $Res Function(Support) then) =
      _$SupportCopyWithImpl<$Res, Support>;
  @useResult
  $Res call({String phone, String feedback});
}

/// @nodoc
class _$SupportCopyWithImpl<$Res, $Val extends Support>
    implements $SupportCopyWith<$Res> {
  _$SupportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? feedback = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportImplCopyWith<$Res> implements $SupportCopyWith<$Res> {
  factory _$$SupportImplCopyWith(
          _$SupportImpl value, $Res Function(_$SupportImpl) then) =
      __$$SupportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, String feedback});
}

/// @nodoc
class __$$SupportImplCopyWithImpl<$Res>
    extends _$SupportCopyWithImpl<$Res, _$SupportImpl>
    implements _$$SupportImplCopyWith<$Res> {
  __$$SupportImplCopyWithImpl(
      _$SupportImpl _value, $Res Function(_$SupportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? feedback = null,
  }) {
    return _then(_$SupportImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportImpl implements _Support {
  const _$SupportImpl({required this.phone, required this.feedback});

  factory _$SupportImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportImplFromJson(json);

  @override
  final String phone;
  @override
  final String feedback;

  @override
  String toString() {
    return 'Support(phone: $phone, feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, feedback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportImplCopyWith<_$SupportImpl> get copyWith =>
      __$$SupportImplCopyWithImpl<_$SupportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportImplToJson(
      this,
    );
  }
}

abstract class _Support implements Support {
  const factory _Support(
      {required final String phone,
      required final String feedback}) = _$SupportImpl;

  factory _Support.fromJson(Map<String, dynamic> json) = _$SupportImpl.fromJson;

  @override
  String get phone;
  @override
  String get feedback;
  @override
  @JsonKey(ignore: true)
  _$$SupportImplCopyWith<_$SupportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
