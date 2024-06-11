// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DriverOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOrderStatus,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderStatus,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderStatus,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderStatus value) getOrderStatus,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverOrderEventCopyWith<$Res> {
  factory $DriverOrderEventCopyWith(
          DriverOrderEvent value, $Res Function(DriverOrderEvent) then) =
      _$DriverOrderEventCopyWithImpl<$Res, DriverOrderEvent>;
}

/// @nodoc
class _$DriverOrderEventCopyWithImpl<$Res, $Val extends DriverOrderEvent>
    implements $DriverOrderEventCopyWith<$Res> {
  _$DriverOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$DriverOrderEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DriverOrderEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOrderStatus,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderStatus,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderStatus,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderStatus value) getOrderStatus,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DriverOrderEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetOrderStatusImplCopyWith<$Res> {
  factory _$$GetOrderStatusImplCopyWith(_$GetOrderStatusImpl value,
          $Res Function(_$GetOrderStatusImpl) then) =
      __$$GetOrderStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrderStatusImplCopyWithImpl<$Res>
    extends _$DriverOrderEventCopyWithImpl<$Res, _$GetOrderStatusImpl>
    implements _$$GetOrderStatusImplCopyWith<$Res> {
  __$$GetOrderStatusImplCopyWithImpl(
      _$GetOrderStatusImpl _value, $Res Function(_$GetOrderStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOrderStatusImpl implements _GetOrderStatus {
  const _$GetOrderStatusImpl();

  @override
  String toString() {
    return 'DriverOrderEvent.getOrderStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrderStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOrderStatus,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
  }) {
    return getOrderStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderStatus,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
  }) {
    return getOrderStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderStatus,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    required TResult orElse(),
  }) {
    if (getOrderStatus != null) {
      return getOrderStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderStatus value) getOrderStatus,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
  }) {
    return getOrderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
  }) {
    return getOrderStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    required TResult orElse(),
  }) {
    if (getOrderStatus != null) {
      return getOrderStatus(this);
    }
    return orElse();
  }
}

abstract class _GetOrderStatus implements DriverOrderEvent {
  const factory _GetOrderStatus() = _$GetOrderStatusImpl;
}

/// @nodoc
abstract class _$$UpdateOrderStatusImplCopyWith<$Res> {
  factory _$$UpdateOrderStatusImplCopyWith(_$UpdateOrderStatusImpl value,
          $Res Function(_$UpdateOrderStatusImpl) then) =
      __$$UpdateOrderStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetOrderStatusResponse updateOrderStatus});

  $GetOrderStatusResponseCopyWith<$Res> get updateOrderStatus;
}

/// @nodoc
class __$$UpdateOrderStatusImplCopyWithImpl<$Res>
    extends _$DriverOrderEventCopyWithImpl<$Res, _$UpdateOrderStatusImpl>
    implements _$$UpdateOrderStatusImplCopyWith<$Res> {
  __$$UpdateOrderStatusImplCopyWithImpl(_$UpdateOrderStatusImpl _value,
      $Res Function(_$UpdateOrderStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateOrderStatus = null,
  }) {
    return _then(_$UpdateOrderStatusImpl(
      updateOrderStatus: null == updateOrderStatus
          ? _value.updateOrderStatus
          : updateOrderStatus // ignore: cast_nullable_to_non_nullable
              as GetOrderStatusResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GetOrderStatusResponseCopyWith<$Res> get updateOrderStatus {
    return $GetOrderStatusResponseCopyWith<$Res>(_value.updateOrderStatus,
        (value) {
      return _then(_value.copyWith(updateOrderStatus: value));
    });
  }
}

/// @nodoc

class _$UpdateOrderStatusImpl implements _UpdateOrderStatus {
  const _$UpdateOrderStatusImpl({required this.updateOrderStatus});

  @override
  final GetOrderStatusResponse updateOrderStatus;

  @override
  String toString() {
    return 'DriverOrderEvent.updateOrderStatus(updateOrderStatus: $updateOrderStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderStatusImpl &&
            (identical(other.updateOrderStatus, updateOrderStatus) ||
                other.updateOrderStatus == updateOrderStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateOrderStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderStatusImplCopyWith<_$UpdateOrderStatusImpl> get copyWith =>
      __$$UpdateOrderStatusImplCopyWithImpl<_$UpdateOrderStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOrderStatus,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
  }) {
    return updateOrderStatus(this.updateOrderStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderStatus,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
  }) {
    return updateOrderStatus?.call(this.updateOrderStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderStatus,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    required TResult orElse(),
  }) {
    if (updateOrderStatus != null) {
      return updateOrderStatus(this.updateOrderStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderStatus value) getOrderStatus,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
  }) {
    return updateOrderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
  }) {
    return updateOrderStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    required TResult orElse(),
  }) {
    if (updateOrderStatus != null) {
      return updateOrderStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateOrderStatus implements DriverOrderEvent {
  const factory _UpdateOrderStatus(
          {required final GetOrderStatusResponse updateOrderStatus}) =
      _$UpdateOrderStatusImpl;

  GetOrderStatusResponse get updateOrderStatus;
  @JsonKey(ignore: true)
  _$$UpdateOrderStatusImplCopyWith<_$UpdateOrderStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DriverOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DriverOrderViewModel viewModel) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DriverOrderViewModel viewModel)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DriverOrderViewModel viewModel)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverOrderStateCopyWith<$Res> {
  factory $DriverOrderStateCopyWith(
          DriverOrderState value, $Res Function(DriverOrderState) then) =
      _$DriverOrderStateCopyWithImpl<$Res, DriverOrderState>;
}

/// @nodoc
class _$DriverOrderStateCopyWithImpl<$Res, $Val extends DriverOrderState>
    implements $DriverOrderStateCopyWith<$Res> {
  _$DriverOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DriverOrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DriverOrderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DriverOrderViewModel viewModel) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DriverOrderViewModel viewModel)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DriverOrderViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DriverOrderState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverOrderViewModel viewModel});

  $DriverOrderViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$DriverOrderStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_$LoadedImpl(
      viewModel: null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as DriverOrderViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverOrderViewModelCopyWith<$Res> get viewModel {
    return $DriverOrderViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.viewModel});

  @override
  final DriverOrderViewModel viewModel;

  @override
  String toString() {
    return 'DriverOrderState.loaded(viewModel: $viewModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DriverOrderViewModel viewModel) loaded,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DriverOrderViewModel viewModel)? loaded,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DriverOrderViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DriverOrderState {
  const factory _Loaded({required final DriverOrderViewModel viewModel}) =
      _$LoadedImpl;

  DriverOrderViewModel get viewModel;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DriverOrderViewModel {
  GetOrderStatusResponse? get updatedOrderStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriverOrderViewModelCopyWith<DriverOrderViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverOrderViewModelCopyWith<$Res> {
  factory $DriverOrderViewModelCopyWith(DriverOrderViewModel value,
          $Res Function(DriverOrderViewModel) then) =
      _$DriverOrderViewModelCopyWithImpl<$Res, DriverOrderViewModel>;
  @useResult
  $Res call({GetOrderStatusResponse? updatedOrderStatus});

  $GetOrderStatusResponseCopyWith<$Res>? get updatedOrderStatus;
}

/// @nodoc
class _$DriverOrderViewModelCopyWithImpl<$Res,
        $Val extends DriverOrderViewModel>
    implements $DriverOrderViewModelCopyWith<$Res> {
  _$DriverOrderViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedOrderStatus = freezed,
  }) {
    return _then(_value.copyWith(
      updatedOrderStatus: freezed == updatedOrderStatus
          ? _value.updatedOrderStatus
          : updatedOrderStatus // ignore: cast_nullable_to_non_nullable
              as GetOrderStatusResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetOrderStatusResponseCopyWith<$Res>? get updatedOrderStatus {
    if (_value.updatedOrderStatus == null) {
      return null;
    }

    return $GetOrderStatusResponseCopyWith<$Res>(_value.updatedOrderStatus!,
        (value) {
      return _then(_value.copyWith(updatedOrderStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverOrderViewModelImplCopyWith<$Res>
    implements $DriverOrderViewModelCopyWith<$Res> {
  factory _$$DriverOrderViewModelImplCopyWith(_$DriverOrderViewModelImpl value,
          $Res Function(_$DriverOrderViewModelImpl) then) =
      __$$DriverOrderViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetOrderStatusResponse? updatedOrderStatus});

  @override
  $GetOrderStatusResponseCopyWith<$Res>? get updatedOrderStatus;
}

/// @nodoc
class __$$DriverOrderViewModelImplCopyWithImpl<$Res>
    extends _$DriverOrderViewModelCopyWithImpl<$Res, _$DriverOrderViewModelImpl>
    implements _$$DriverOrderViewModelImplCopyWith<$Res> {
  __$$DriverOrderViewModelImplCopyWithImpl(_$DriverOrderViewModelImpl _value,
      $Res Function(_$DriverOrderViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedOrderStatus = freezed,
  }) {
    return _then(_$DriverOrderViewModelImpl(
      updatedOrderStatus: freezed == updatedOrderStatus
          ? _value.updatedOrderStatus
          : updatedOrderStatus // ignore: cast_nullable_to_non_nullable
              as GetOrderStatusResponse?,
    ));
  }
}

/// @nodoc

class _$DriverOrderViewModelImpl implements _DriverOrderViewModel {
  const _$DriverOrderViewModelImpl({this.updatedOrderStatus});

  @override
  final GetOrderStatusResponse? updatedOrderStatus;

  @override
  String toString() {
    return 'DriverOrderViewModel(updatedOrderStatus: $updatedOrderStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOrderViewModelImpl &&
            (identical(other.updatedOrderStatus, updatedOrderStatus) ||
                other.updatedOrderStatus == updatedOrderStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedOrderStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverOrderViewModelImplCopyWith<_$DriverOrderViewModelImpl>
      get copyWith =>
          __$$DriverOrderViewModelImplCopyWithImpl<_$DriverOrderViewModelImpl>(
              this, _$identity);
}

abstract class _DriverOrderViewModel implements DriverOrderViewModel {
  const factory _DriverOrderViewModel(
          {final GetOrderStatusResponse? updatedOrderStatus}) =
      _$DriverOrderViewModelImpl;

  @override
  GetOrderStatusResponse? get updatedOrderStatus;
  @override
  @JsonKey(ignore: true)
  _$$DriverOrderViewModelImplCopyWith<_$DriverOrderViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
