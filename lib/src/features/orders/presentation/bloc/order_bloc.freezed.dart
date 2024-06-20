// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateOrderEntity orderEntity) createOrder,
    required TResult Function() acceptedOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateOrderEntity orderEntity)? createOrder,
    TResult? Function()? acceptedOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateOrderEntity orderEntity)? createOrder,
    TResult Function()? acceptedOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AcceptedOrder value) acceptedOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AcceptedOrder value)? acceptedOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AcceptedOrder value)? acceptedOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

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
    extends _$OrderEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'OrderEvent.started()';
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
    required TResult Function(CreateOrderEntity orderEntity) createOrder,
    required TResult Function() acceptedOrder,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateOrderEntity orderEntity)? createOrder,
    TResult? Function()? acceptedOrder,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateOrderEntity orderEntity)? createOrder,
    TResult Function()? acceptedOrder,
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
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AcceptedOrder value) acceptedOrder,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AcceptedOrder value)? acceptedOrder,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AcceptedOrder value)? acceptedOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrderEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CreateOrderImplCopyWith<$Res> {
  factory _$$CreateOrderImplCopyWith(
          _$CreateOrderImpl value, $Res Function(_$CreateOrderImpl) then) =
      __$$CreateOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateOrderEntity orderEntity});

  $CreateOrderEntityCopyWith<$Res> get orderEntity;
}

/// @nodoc
class __$$CreateOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$CreateOrderImpl>
    implements _$$CreateOrderImplCopyWith<$Res> {
  __$$CreateOrderImplCopyWithImpl(
      _$CreateOrderImpl _value, $Res Function(_$CreateOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderEntity = null,
  }) {
    return _then(_$CreateOrderImpl(
      orderEntity: null == orderEntity
          ? _value.orderEntity
          : orderEntity // ignore: cast_nullable_to_non_nullable
              as CreateOrderEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateOrderEntityCopyWith<$Res> get orderEntity {
    return $CreateOrderEntityCopyWith<$Res>(_value.orderEntity, (value) {
      return _then(_value.copyWith(orderEntity: value));
    });
  }
}

/// @nodoc

class _$CreateOrderImpl implements _CreateOrder {
  const _$CreateOrderImpl({required this.orderEntity});

  @override
  final CreateOrderEntity orderEntity;

  @override
  String toString() {
    return 'OrderEvent.createOrder(orderEntity: $orderEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderImpl &&
            (identical(other.orderEntity, orderEntity) ||
                other.orderEntity == orderEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderImplCopyWith<_$CreateOrderImpl> get copyWith =>
      __$$CreateOrderImplCopyWithImpl<_$CreateOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateOrderEntity orderEntity) createOrder,
    required TResult Function() acceptedOrder,
  }) {
    return createOrder(orderEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateOrderEntity orderEntity)? createOrder,
    TResult? Function()? acceptedOrder,
  }) {
    return createOrder?.call(orderEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateOrderEntity orderEntity)? createOrder,
    TResult Function()? acceptedOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(orderEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AcceptedOrder value) acceptedOrder,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AcceptedOrder value)? acceptedOrder,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AcceptedOrder value)? acceptedOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class _CreateOrder implements OrderEvent {
  const factory _CreateOrder({required final CreateOrderEntity orderEntity}) =
      _$CreateOrderImpl;

  CreateOrderEntity get orderEntity;
  @JsonKey(ignore: true)
  _$$CreateOrderImplCopyWith<_$CreateOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AcceptedOrderImplCopyWith<$Res> {
  factory _$$AcceptedOrderImplCopyWith(
          _$AcceptedOrderImpl value, $Res Function(_$AcceptedOrderImpl) then) =
      __$$AcceptedOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcceptedOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$AcceptedOrderImpl>
    implements _$$AcceptedOrderImplCopyWith<$Res> {
  __$$AcceptedOrderImplCopyWithImpl(
      _$AcceptedOrderImpl _value, $Res Function(_$AcceptedOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AcceptedOrderImpl implements _AcceptedOrder {
  const _$AcceptedOrderImpl();

  @override
  String toString() {
    return 'OrderEvent.acceptedOrder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AcceptedOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateOrderEntity orderEntity) createOrder,
    required TResult Function() acceptedOrder,
  }) {
    return acceptedOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateOrderEntity orderEntity)? createOrder,
    TResult? Function()? acceptedOrder,
  }) {
    return acceptedOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateOrderEntity orderEntity)? createOrder,
    TResult Function()? acceptedOrder,
    required TResult orElse(),
  }) {
    if (acceptedOrder != null) {
      return acceptedOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AcceptedOrder value) acceptedOrder,
  }) {
    return acceptedOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AcceptedOrder value)? acceptedOrder,
  }) {
    return acceptedOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AcceptedOrder value)? acceptedOrder,
    required TResult orElse(),
  }) {
    if (acceptedOrder != null) {
      return acceptedOrder(this);
    }
    return orElse();
  }
}

abstract class _AcceptedOrder implements OrderEvent {
  const factory _AcceptedOrder() = _$AcceptedOrderImpl;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderViewModel viewModel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

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
    extends _$OrderStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'OrderState.initial()';
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
    required TResult Function(OrderViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderViewModel viewModel)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderViewModel viewModel});

  $OrderViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$LoadedImpl>
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
              as OrderViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderViewModelCopyWith<$Res> get viewModel {
    return $OrderViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.viewModel});

  @override
  final OrderViewModel viewModel;

  @override
  String toString() {
    return 'OrderState.loaded(viewModel: $viewModel)';
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
    required TResult Function(OrderViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderViewModel viewModel)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements OrderState {
  const factory _Loaded({required final OrderViewModel viewModel}) =
      _$LoadedImpl;

  OrderViewModel get viewModel;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'OrderState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderViewModel viewModel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements OrderState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderViewModel {
  OrdersResponse? get orders => throw _privateConstructorUsedError;
  List<OrderEntity> get ordersList => throw _privateConstructorUsedError;
  OrderEntity? get orderAccepted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderViewModelCopyWith<OrderViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderViewModelCopyWith<$Res> {
  factory $OrderViewModelCopyWith(
          OrderViewModel value, $Res Function(OrderViewModel) then) =
      _$OrderViewModelCopyWithImpl<$Res, OrderViewModel>;
  @useResult
  $Res call(
      {OrdersResponse? orders,
      List<OrderEntity> ordersList,
      OrderEntity? orderAccepted});

  $OrdersResponseCopyWith<$Res>? get orders;
  $OrderEntityCopyWith<$Res>? get orderAccepted;
}

/// @nodoc
class _$OrderViewModelCopyWithImpl<$Res, $Val extends OrderViewModel>
    implements $OrderViewModelCopyWith<$Res> {
  _$OrderViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
    Object? ordersList = null,
    Object? orderAccepted = freezed,
  }) {
    return _then(_value.copyWith(
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as OrdersResponse?,
      ordersList: null == ordersList
          ? _value.ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      orderAccepted: freezed == orderAccepted
          ? _value.orderAccepted
          : orderAccepted // ignore: cast_nullable_to_non_nullable
              as OrderEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrdersResponseCopyWith<$Res>? get orders {
    if (_value.orders == null) {
      return null;
    }

    return $OrdersResponseCopyWith<$Res>(_value.orders!, (value) {
      return _then(_value.copyWith(orders: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderEntityCopyWith<$Res>? get orderAccepted {
    if (_value.orderAccepted == null) {
      return null;
    }

    return $OrderEntityCopyWith<$Res>(_value.orderAccepted!, (value) {
      return _then(_value.copyWith(orderAccepted: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderViewModelImplCopyWith<$Res>
    implements $OrderViewModelCopyWith<$Res> {
  factory _$$OrderViewModelImplCopyWith(_$OrderViewModelImpl value,
          $Res Function(_$OrderViewModelImpl) then) =
      __$$OrderViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OrdersResponse? orders,
      List<OrderEntity> ordersList,
      OrderEntity? orderAccepted});

  @override
  $OrdersResponseCopyWith<$Res>? get orders;
  @override
  $OrderEntityCopyWith<$Res>? get orderAccepted;
}

/// @nodoc
class __$$OrderViewModelImplCopyWithImpl<$Res>
    extends _$OrderViewModelCopyWithImpl<$Res, _$OrderViewModelImpl>
    implements _$$OrderViewModelImplCopyWith<$Res> {
  __$$OrderViewModelImplCopyWithImpl(
      _$OrderViewModelImpl _value, $Res Function(_$OrderViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
    Object? ordersList = null,
    Object? orderAccepted = freezed,
  }) {
    return _then(_$OrderViewModelImpl(
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as OrdersResponse?,
      ordersList: null == ordersList
          ? _value._ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      orderAccepted: freezed == orderAccepted
          ? _value.orderAccepted
          : orderAccepted // ignore: cast_nullable_to_non_nullable
              as OrderEntity?,
    ));
  }
}

/// @nodoc

class _$OrderViewModelImpl implements _OrderViewModel {
  const _$OrderViewModelImpl(
      {this.orders,
      final List<OrderEntity> ordersList = const [],
      this.orderAccepted})
      : _ordersList = ordersList;

  @override
  final OrdersResponse? orders;
  final List<OrderEntity> _ordersList;
  @override
  @JsonKey()
  List<OrderEntity> get ordersList {
    if (_ordersList is EqualUnmodifiableListView) return _ordersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ordersList);
  }

  @override
  final OrderEntity? orderAccepted;

  @override
  String toString() {
    return 'OrderViewModel(orders: $orders, ordersList: $ordersList, orderAccepted: $orderAccepted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderViewModelImpl &&
            (identical(other.orders, orders) || other.orders == orders) &&
            const DeepCollectionEquality()
                .equals(other._ordersList, _ordersList) &&
            (identical(other.orderAccepted, orderAccepted) ||
                other.orderAccepted == orderAccepted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orders,
      const DeepCollectionEquality().hash(_ordersList), orderAccepted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderViewModelImplCopyWith<_$OrderViewModelImpl> get copyWith =>
      __$$OrderViewModelImplCopyWithImpl<_$OrderViewModelImpl>(
          this, _$identity);
}

abstract class _OrderViewModel implements OrderViewModel {
  const factory _OrderViewModel(
      {final OrdersResponse? orders,
      final List<OrderEntity> ordersList,
      final OrderEntity? orderAccepted}) = _$OrderViewModelImpl;

  @override
  OrdersResponse? get orders;
  @override
  List<OrderEntity> get ordersList;
  @override
  OrderEntity? get orderAccepted;
  @override
  @JsonKey(ignore: true)
  _$$OrderViewModelImplCopyWith<_$OrderViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
