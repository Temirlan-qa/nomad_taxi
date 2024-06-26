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
    required TResult Function(int orderId) getOrderStatus,
    required TResult Function() getOrders,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
    required TResult Function(int orderId) acceptOrder,
    required TResult Function(int orderId) waitingForClient,
    required TResult Function(int orderId) startRoute,
    required TResult Function(int orderId) completeOrder,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function(OrderEntity newOrder) updateOrderList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int orderId)? getOrderStatus,
    TResult? Function()? getOrders,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult? Function(int orderId)? acceptOrder,
    TResult? Function(int orderId)? waitingForClient,
    TResult? Function(int orderId)? startRoute,
    TResult? Function(int orderId)? completeOrder,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function(OrderEntity newOrder)? updateOrderList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int orderId)? getOrderStatus,
    TResult Function()? getOrders,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult Function(int orderId)? acceptOrder,
    TResult Function(int orderId)? waitingForClient,
    TResult Function(int orderId)? startRoute,
    TResult Function(int orderId)? completeOrder,
    TResult Function(int orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function(OrderEntity newOrder)? updateOrderList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderStatus value) getOrderStatus,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_WaitingForClient value) waitingForClient,
    required TResult Function(_StartRoute value) startRoute,
    required TResult Function(_CompleteOrder value) completeOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_GetNewOrder value) getNewOrder,
    required TResult Function(_UpdateOrderList value) updateOrderList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_WaitingForClient value)? waitingForClient,
    TResult? Function(_StartRoute value)? startRoute,
    TResult? Function(_CompleteOrder value)? completeOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_GetNewOrder value)? getNewOrder,
    TResult? Function(_UpdateOrderList value)? updateOrderList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_WaitingForClient value)? waitingForClient,
    TResult Function(_StartRoute value)? startRoute,
    TResult Function(_CompleteOrder value)? completeOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_GetNewOrder value)? getNewOrder,
    TResult Function(_UpdateOrderList value)? updateOrderList,
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
    required TResult Function(int orderId) getOrderStatus,
    required TResult Function() getOrders,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
    required TResult Function(int orderId) acceptOrder,
    required TResult Function(int orderId) waitingForClient,
    required TResult Function(int orderId) startRoute,
    required TResult Function(int orderId) completeOrder,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function(OrderEntity newOrder) updateOrderList,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int orderId)? getOrderStatus,
    TResult? Function()? getOrders,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult? Function(int orderId)? acceptOrder,
    TResult? Function(int orderId)? waitingForClient,
    TResult? Function(int orderId)? startRoute,
    TResult? Function(int orderId)? completeOrder,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function(OrderEntity newOrder)? updateOrderList,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int orderId)? getOrderStatus,
    TResult Function()? getOrders,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult Function(int orderId)? acceptOrder,
    TResult Function(int orderId)? waitingForClient,
    TResult Function(int orderId)? startRoute,
    TResult Function(int orderId)? completeOrder,
    TResult Function(int orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function(OrderEntity newOrder)? updateOrderList,
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
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_WaitingForClient value) waitingForClient,
    required TResult Function(_StartRoute value) startRoute,
    required TResult Function(_CompleteOrder value) completeOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_GetNewOrder value) getNewOrder,
    required TResult Function(_UpdateOrderList value) updateOrderList,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_WaitingForClient value)? waitingForClient,
    TResult? Function(_StartRoute value)? startRoute,
    TResult? Function(_CompleteOrder value)? completeOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_GetNewOrder value)? getNewOrder,
    TResult? Function(_UpdateOrderList value)? updateOrderList,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_WaitingForClient value)? waitingForClient,
    TResult Function(_StartRoute value)? startRoute,
    TResult Function(_CompleteOrder value)? completeOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_GetNewOrder value)? getNewOrder,
    TResult Function(_UpdateOrderList value)? updateOrderList,
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
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$GetOrderStatusImplCopyWithImpl<$Res>
    extends _$DriverOrderEventCopyWithImpl<$Res, _$GetOrderStatusImpl>
    implements _$$GetOrderStatusImplCopyWith<$Res> {
  __$$GetOrderStatusImplCopyWithImpl(
      _$GetOrderStatusImpl _value, $Res Function(_$GetOrderStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$GetOrderStatusImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetOrderStatusImpl implements _GetOrderStatus {
  const _$GetOrderStatusImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'DriverOrderEvent.getOrderStatus(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderStatusImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderStatusImplCopyWith<_$GetOrderStatusImpl> get copyWith =>
      __$$GetOrderStatusImplCopyWithImpl<_$GetOrderStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int orderId) getOrderStatus,
    required TResult Function() getOrders,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
    required TResult Function(int orderId) acceptOrder,
    required TResult Function(int orderId) waitingForClient,
    required TResult Function(int orderId) startRoute,
    required TResult Function(int orderId) completeOrder,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function(OrderEntity newOrder) updateOrderList,
  }) {
    return getOrderStatus(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int orderId)? getOrderStatus,
    TResult? Function()? getOrders,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult? Function(int orderId)? acceptOrder,
    TResult? Function(int orderId)? waitingForClient,
    TResult? Function(int orderId)? startRoute,
    TResult? Function(int orderId)? completeOrder,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function(OrderEntity newOrder)? updateOrderList,
  }) {
    return getOrderStatus?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int orderId)? getOrderStatus,
    TResult Function()? getOrders,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult Function(int orderId)? acceptOrder,
    TResult Function(int orderId)? waitingForClient,
    TResult Function(int orderId)? startRoute,
    TResult Function(int orderId)? completeOrder,
    TResult Function(int orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function(OrderEntity newOrder)? updateOrderList,
    required TResult orElse(),
  }) {
    if (getOrderStatus != null) {
      return getOrderStatus(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderStatus value) getOrderStatus,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_WaitingForClient value) waitingForClient,
    required TResult Function(_StartRoute value) startRoute,
    required TResult Function(_CompleteOrder value) completeOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_GetNewOrder value) getNewOrder,
    required TResult Function(_UpdateOrderList value) updateOrderList,
  }) {
    return getOrderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_WaitingForClient value)? waitingForClient,
    TResult? Function(_StartRoute value)? startRoute,
    TResult? Function(_CompleteOrder value)? completeOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_GetNewOrder value)? getNewOrder,
    TResult? Function(_UpdateOrderList value)? updateOrderList,
  }) {
    return getOrderStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_WaitingForClient value)? waitingForClient,
    TResult Function(_StartRoute value)? startRoute,
    TResult Function(_CompleteOrder value)? completeOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_GetNewOrder value)? getNewOrder,
    TResult Function(_UpdateOrderList value)? updateOrderList,
    required TResult orElse(),
  }) {
    if (getOrderStatus != null) {
      return getOrderStatus(this);
    }
    return orElse();
  }
}

abstract class _GetOrderStatus implements DriverOrderEvent {
  const factory _GetOrderStatus({required final int orderId}) =
      _$GetOrderStatusImpl;

  int get orderId;
  @JsonKey(ignore: true)
  _$$GetOrderStatusImplCopyWith<_$GetOrderStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOrdersImplCopyWith<$Res> {
  factory _$$GetOrdersImplCopyWith(
          _$GetOrdersImpl value, $Res Function(_$GetOrdersImpl) then) =
      __$$GetOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrdersImplCopyWithImpl<$Res>
    extends _$DriverOrderEventCopyWithImpl<$Res, _$GetOrdersImpl>
    implements _$$GetOrdersImplCopyWith<$Res> {
  __$$GetOrdersImplCopyWithImpl(
      _$GetOrdersImpl _value, $Res Function(_$GetOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOrdersImpl implements _GetOrders {
  const _$GetOrdersImpl();

  @override
  String toString() {
    return 'DriverOrderEvent.getOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int orderId) getOrderStatus,
    required TResult Function() getOrders,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
    required TResult Function(int orderId) acceptOrder,
    required TResult Function(int orderId) waitingForClient,
    required TResult Function(int orderId) startRoute,
    required TResult Function(int orderId) completeOrder,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function(OrderEntity newOrder) updateOrderList,
  }) {
    return getOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int orderId)? getOrderStatus,
    TResult? Function()? getOrders,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult? Function(int orderId)? acceptOrder,
    TResult? Function(int orderId)? waitingForClient,
    TResult? Function(int orderId)? startRoute,
    TResult? Function(int orderId)? completeOrder,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function(OrderEntity newOrder)? updateOrderList,
  }) {
    return getOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int orderId)? getOrderStatus,
    TResult Function()? getOrders,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult Function(int orderId)? acceptOrder,
    TResult Function(int orderId)? waitingForClient,
    TResult Function(int orderId)? startRoute,
    TResult Function(int orderId)? completeOrder,
    TResult Function(int orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function(OrderEntity newOrder)? updateOrderList,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderStatus value) getOrderStatus,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_WaitingForClient value) waitingForClient,
    required TResult Function(_StartRoute value) startRoute,
    required TResult Function(_CompleteOrder value) completeOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_GetNewOrder value) getNewOrder,
    required TResult Function(_UpdateOrderList value) updateOrderList,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_WaitingForClient value)? waitingForClient,
    TResult? Function(_StartRoute value)? startRoute,
    TResult? Function(_CompleteOrder value)? completeOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_GetNewOrder value)? getNewOrder,
    TResult? Function(_UpdateOrderList value)? updateOrderList,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_WaitingForClient value)? waitingForClient,
    TResult Function(_StartRoute value)? startRoute,
    TResult Function(_CompleteOrder value)? completeOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_GetNewOrder value)? getNewOrder,
    TResult Function(_UpdateOrderList value)? updateOrderList,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class _GetOrders implements DriverOrderEvent {
  const factory _GetOrders() = _$GetOrdersImpl;
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
    required TResult Function(int orderId) getOrderStatus,
    required TResult Function() getOrders,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
    required TResult Function(int orderId) acceptOrder,
    required TResult Function(int orderId) waitingForClient,
    required TResult Function(int orderId) startRoute,
    required TResult Function(int orderId) completeOrder,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function(OrderEntity newOrder) updateOrderList,
  }) {
    return updateOrderStatus(this.updateOrderStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int orderId)? getOrderStatus,
    TResult? Function()? getOrders,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult? Function(int orderId)? acceptOrder,
    TResult? Function(int orderId)? waitingForClient,
    TResult? Function(int orderId)? startRoute,
    TResult? Function(int orderId)? completeOrder,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function(OrderEntity newOrder)? updateOrderList,
  }) {
    return updateOrderStatus?.call(this.updateOrderStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int orderId)? getOrderStatus,
    TResult Function()? getOrders,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult Function(int orderId)? acceptOrder,
    TResult Function(int orderId)? waitingForClient,
    TResult Function(int orderId)? startRoute,
    TResult Function(int orderId)? completeOrder,
    TResult Function(int orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function(OrderEntity newOrder)? updateOrderList,
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
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_WaitingForClient value) waitingForClient,
    required TResult Function(_StartRoute value) startRoute,
    required TResult Function(_CompleteOrder value) completeOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_GetNewOrder value) getNewOrder,
    required TResult Function(_UpdateOrderList value) updateOrderList,
  }) {
    return updateOrderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_WaitingForClient value)? waitingForClient,
    TResult? Function(_StartRoute value)? startRoute,
    TResult? Function(_CompleteOrder value)? completeOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_GetNewOrder value)? getNewOrder,
    TResult? Function(_UpdateOrderList value)? updateOrderList,
  }) {
    return updateOrderStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_WaitingForClient value)? waitingForClient,
    TResult Function(_StartRoute value)? startRoute,
    TResult Function(_CompleteOrder value)? completeOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_GetNewOrder value)? getNewOrder,
    TResult Function(_UpdateOrderList value)? updateOrderList,
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
abstract class _$$AcceptOrderImplCopyWith<$Res> {
  factory _$$AcceptOrderImplCopyWith(
          _$AcceptOrderImpl value, $Res Function(_$AcceptOrderImpl) then) =
      __$$AcceptOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$AcceptOrderImplCopyWithImpl<$Res>
    extends _$DriverOrderEventCopyWithImpl<$Res, _$AcceptOrderImpl>
    implements _$$AcceptOrderImplCopyWith<$Res> {
  __$$AcceptOrderImplCopyWithImpl(
      _$AcceptOrderImpl _value, $Res Function(_$AcceptOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$AcceptOrderImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AcceptOrderImpl implements _AcceptOrder {
  const _$AcceptOrderImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'DriverOrderEvent.acceptOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptOrderImplCopyWith<_$AcceptOrderImpl> get copyWith =>
      __$$AcceptOrderImplCopyWithImpl<_$AcceptOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int orderId) getOrderStatus,
    required TResult Function() getOrders,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
    required TResult Function(int orderId) acceptOrder,
    required TResult Function(int orderId) waitingForClient,
    required TResult Function(int orderId) startRoute,
    required TResult Function(int orderId) completeOrder,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function(OrderEntity newOrder) updateOrderList,
  }) {
    return acceptOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int orderId)? getOrderStatus,
    TResult? Function()? getOrders,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult? Function(int orderId)? acceptOrder,
    TResult? Function(int orderId)? waitingForClient,
    TResult? Function(int orderId)? startRoute,
    TResult? Function(int orderId)? completeOrder,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function(OrderEntity newOrder)? updateOrderList,
  }) {
    return acceptOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int orderId)? getOrderStatus,
    TResult Function()? getOrders,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult Function(int orderId)? acceptOrder,
    TResult Function(int orderId)? waitingForClient,
    TResult Function(int orderId)? startRoute,
    TResult Function(int orderId)? completeOrder,
    TResult Function(int orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function(OrderEntity newOrder)? updateOrderList,
    required TResult orElse(),
  }) {
    if (acceptOrder != null) {
      return acceptOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderStatus value) getOrderStatus,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_WaitingForClient value) waitingForClient,
    required TResult Function(_StartRoute value) startRoute,
    required TResult Function(_CompleteOrder value) completeOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_GetNewOrder value) getNewOrder,
    required TResult Function(_UpdateOrderList value) updateOrderList,
  }) {
    return acceptOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_WaitingForClient value)? waitingForClient,
    TResult? Function(_StartRoute value)? startRoute,
    TResult? Function(_CompleteOrder value)? completeOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_GetNewOrder value)? getNewOrder,
    TResult? Function(_UpdateOrderList value)? updateOrderList,
  }) {
    return acceptOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_WaitingForClient value)? waitingForClient,
    TResult Function(_StartRoute value)? startRoute,
    TResult Function(_CompleteOrder value)? completeOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_GetNewOrder value)? getNewOrder,
    TResult Function(_UpdateOrderList value)? updateOrderList,
    required TResult orElse(),
  }) {
    if (acceptOrder != null) {
      return acceptOrder(this);
    }
    return orElse();
  }
}

abstract class _AcceptOrder implements DriverOrderEvent {
  const factory _AcceptOrder({required final int orderId}) = _$AcceptOrderImpl;

  int get orderId;
  @JsonKey(ignore: true)
  _$$AcceptOrderImplCopyWith<_$AcceptOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WaitingForClientImplCopyWith<$Res> {
  factory _$$WaitingForClientImplCopyWith(_$WaitingForClientImpl value,
          $Res Function(_$WaitingForClientImpl) then) =
      __$$WaitingForClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$WaitingForClientImplCopyWithImpl<$Res>
    extends _$DriverOrderEventCopyWithImpl<$Res, _$WaitingForClientImpl>
    implements _$$WaitingForClientImplCopyWith<$Res> {
  __$$WaitingForClientImplCopyWithImpl(_$WaitingForClientImpl _value,
      $Res Function(_$WaitingForClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$WaitingForClientImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WaitingForClientImpl implements _WaitingForClient {
  const _$WaitingForClientImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'DriverOrderEvent.waitingForClient(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitingForClientImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitingForClientImplCopyWith<_$WaitingForClientImpl> get copyWith =>
      __$$WaitingForClientImplCopyWithImpl<_$WaitingForClientImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int orderId) getOrderStatus,
    required TResult Function() getOrders,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
    required TResult Function(int orderId) acceptOrder,
    required TResult Function(int orderId) waitingForClient,
    required TResult Function(int orderId) startRoute,
    required TResult Function(int orderId) completeOrder,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function(OrderEntity newOrder) updateOrderList,
  }) {
    return waitingForClient(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int orderId)? getOrderStatus,
    TResult? Function()? getOrders,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult? Function(int orderId)? acceptOrder,
    TResult? Function(int orderId)? waitingForClient,
    TResult? Function(int orderId)? startRoute,
    TResult? Function(int orderId)? completeOrder,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function(OrderEntity newOrder)? updateOrderList,
  }) {
    return waitingForClient?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int orderId)? getOrderStatus,
    TResult Function()? getOrders,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult Function(int orderId)? acceptOrder,
    TResult Function(int orderId)? waitingForClient,
    TResult Function(int orderId)? startRoute,
    TResult Function(int orderId)? completeOrder,
    TResult Function(int orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function(OrderEntity newOrder)? updateOrderList,
    required TResult orElse(),
  }) {
    if (waitingForClient != null) {
      return waitingForClient(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderStatus value) getOrderStatus,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_WaitingForClient value) waitingForClient,
    required TResult Function(_StartRoute value) startRoute,
    required TResult Function(_CompleteOrder value) completeOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_GetNewOrder value) getNewOrder,
    required TResult Function(_UpdateOrderList value) updateOrderList,
  }) {
    return waitingForClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_WaitingForClient value)? waitingForClient,
    TResult? Function(_StartRoute value)? startRoute,
    TResult? Function(_CompleteOrder value)? completeOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_GetNewOrder value)? getNewOrder,
    TResult? Function(_UpdateOrderList value)? updateOrderList,
  }) {
    return waitingForClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_WaitingForClient value)? waitingForClient,
    TResult Function(_StartRoute value)? startRoute,
    TResult Function(_CompleteOrder value)? completeOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_GetNewOrder value)? getNewOrder,
    TResult Function(_UpdateOrderList value)? updateOrderList,
    required TResult orElse(),
  }) {
    if (waitingForClient != null) {
      return waitingForClient(this);
    }
    return orElse();
  }
}

abstract class _WaitingForClient implements DriverOrderEvent {
  const factory _WaitingForClient({required final int orderId}) =
      _$WaitingForClientImpl;

  int get orderId;
  @JsonKey(ignore: true)
  _$$WaitingForClientImplCopyWith<_$WaitingForClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartRouteImplCopyWith<$Res> {
  factory _$$StartRouteImplCopyWith(
          _$StartRouteImpl value, $Res Function(_$StartRouteImpl) then) =
      __$$StartRouteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$StartRouteImplCopyWithImpl<$Res>
    extends _$DriverOrderEventCopyWithImpl<$Res, _$StartRouteImpl>
    implements _$$StartRouteImplCopyWith<$Res> {
  __$$StartRouteImplCopyWithImpl(
      _$StartRouteImpl _value, $Res Function(_$StartRouteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$StartRouteImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartRouteImpl implements _StartRoute {
  const _$StartRouteImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'DriverOrderEvent.startRoute(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartRouteImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartRouteImplCopyWith<_$StartRouteImpl> get copyWith =>
      __$$StartRouteImplCopyWithImpl<_$StartRouteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int orderId) getOrderStatus,
    required TResult Function() getOrders,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
    required TResult Function(int orderId) acceptOrder,
    required TResult Function(int orderId) waitingForClient,
    required TResult Function(int orderId) startRoute,
    required TResult Function(int orderId) completeOrder,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function(OrderEntity newOrder) updateOrderList,
  }) {
    return startRoute(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int orderId)? getOrderStatus,
    TResult? Function()? getOrders,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult? Function(int orderId)? acceptOrder,
    TResult? Function(int orderId)? waitingForClient,
    TResult? Function(int orderId)? startRoute,
    TResult? Function(int orderId)? completeOrder,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function(OrderEntity newOrder)? updateOrderList,
  }) {
    return startRoute?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int orderId)? getOrderStatus,
    TResult Function()? getOrders,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult Function(int orderId)? acceptOrder,
    TResult Function(int orderId)? waitingForClient,
    TResult Function(int orderId)? startRoute,
    TResult Function(int orderId)? completeOrder,
    TResult Function(int orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function(OrderEntity newOrder)? updateOrderList,
    required TResult orElse(),
  }) {
    if (startRoute != null) {
      return startRoute(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderStatus value) getOrderStatus,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_WaitingForClient value) waitingForClient,
    required TResult Function(_StartRoute value) startRoute,
    required TResult Function(_CompleteOrder value) completeOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_GetNewOrder value) getNewOrder,
    required TResult Function(_UpdateOrderList value) updateOrderList,
  }) {
    return startRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_WaitingForClient value)? waitingForClient,
    TResult? Function(_StartRoute value)? startRoute,
    TResult? Function(_CompleteOrder value)? completeOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_GetNewOrder value)? getNewOrder,
    TResult? Function(_UpdateOrderList value)? updateOrderList,
  }) {
    return startRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_WaitingForClient value)? waitingForClient,
    TResult Function(_StartRoute value)? startRoute,
    TResult Function(_CompleteOrder value)? completeOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_GetNewOrder value)? getNewOrder,
    TResult Function(_UpdateOrderList value)? updateOrderList,
    required TResult orElse(),
  }) {
    if (startRoute != null) {
      return startRoute(this);
    }
    return orElse();
  }
}

abstract class _StartRoute implements DriverOrderEvent {
  const factory _StartRoute({required final int orderId}) = _$StartRouteImpl;

  int get orderId;
  @JsonKey(ignore: true)
  _$$StartRouteImplCopyWith<_$StartRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteOrderImplCopyWith<$Res> {
  factory _$$CompleteOrderImplCopyWith(
          _$CompleteOrderImpl value, $Res Function(_$CompleteOrderImpl) then) =
      __$$CompleteOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$CompleteOrderImplCopyWithImpl<$Res>
    extends _$DriverOrderEventCopyWithImpl<$Res, _$CompleteOrderImpl>
    implements _$$CompleteOrderImplCopyWith<$Res> {
  __$$CompleteOrderImplCopyWithImpl(
      _$CompleteOrderImpl _value, $Res Function(_$CompleteOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$CompleteOrderImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CompleteOrderImpl implements _CompleteOrder {
  const _$CompleteOrderImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'DriverOrderEvent.completeOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteOrderImplCopyWith<_$CompleteOrderImpl> get copyWith =>
      __$$CompleteOrderImplCopyWithImpl<_$CompleteOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int orderId) getOrderStatus,
    required TResult Function() getOrders,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
    required TResult Function(int orderId) acceptOrder,
    required TResult Function(int orderId) waitingForClient,
    required TResult Function(int orderId) startRoute,
    required TResult Function(int orderId) completeOrder,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function(OrderEntity newOrder) updateOrderList,
  }) {
    return completeOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int orderId)? getOrderStatus,
    TResult? Function()? getOrders,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult? Function(int orderId)? acceptOrder,
    TResult? Function(int orderId)? waitingForClient,
    TResult? Function(int orderId)? startRoute,
    TResult? Function(int orderId)? completeOrder,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function(OrderEntity newOrder)? updateOrderList,
  }) {
    return completeOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int orderId)? getOrderStatus,
    TResult Function()? getOrders,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult Function(int orderId)? acceptOrder,
    TResult Function(int orderId)? waitingForClient,
    TResult Function(int orderId)? startRoute,
    TResult Function(int orderId)? completeOrder,
    TResult Function(int orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function(OrderEntity newOrder)? updateOrderList,
    required TResult orElse(),
  }) {
    if (completeOrder != null) {
      return completeOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderStatus value) getOrderStatus,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_WaitingForClient value) waitingForClient,
    required TResult Function(_StartRoute value) startRoute,
    required TResult Function(_CompleteOrder value) completeOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_GetNewOrder value) getNewOrder,
    required TResult Function(_UpdateOrderList value) updateOrderList,
  }) {
    return completeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_WaitingForClient value)? waitingForClient,
    TResult? Function(_StartRoute value)? startRoute,
    TResult? Function(_CompleteOrder value)? completeOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_GetNewOrder value)? getNewOrder,
    TResult? Function(_UpdateOrderList value)? updateOrderList,
  }) {
    return completeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_WaitingForClient value)? waitingForClient,
    TResult Function(_StartRoute value)? startRoute,
    TResult Function(_CompleteOrder value)? completeOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_GetNewOrder value)? getNewOrder,
    TResult Function(_UpdateOrderList value)? updateOrderList,
    required TResult orElse(),
  }) {
    if (completeOrder != null) {
      return completeOrder(this);
    }
    return orElse();
  }
}

abstract class _CompleteOrder implements DriverOrderEvent {
  const factory _CompleteOrder({required final int orderId}) =
      _$CompleteOrderImpl;

  int get orderId;
  @JsonKey(ignore: true)
  _$$CompleteOrderImplCopyWith<_$CompleteOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelOrderImplCopyWith<$Res> {
  factory _$$CancelOrderImplCopyWith(
          _$CancelOrderImpl value, $Res Function(_$CancelOrderImpl) then) =
      __$$CancelOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$CancelOrderImplCopyWithImpl<$Res>
    extends _$DriverOrderEventCopyWithImpl<$Res, _$CancelOrderImpl>
    implements _$$CancelOrderImplCopyWith<$Res> {
  __$$CancelOrderImplCopyWithImpl(
      _$CancelOrderImpl _value, $Res Function(_$CancelOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$CancelOrderImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CancelOrderImpl implements _CancelOrder {
  const _$CancelOrderImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'DriverOrderEvent.cancelOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelOrderImplCopyWith<_$CancelOrderImpl> get copyWith =>
      __$$CancelOrderImplCopyWithImpl<_$CancelOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int orderId) getOrderStatus,
    required TResult Function() getOrders,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
    required TResult Function(int orderId) acceptOrder,
    required TResult Function(int orderId) waitingForClient,
    required TResult Function(int orderId) startRoute,
    required TResult Function(int orderId) completeOrder,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function(OrderEntity newOrder) updateOrderList,
  }) {
    return cancelOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int orderId)? getOrderStatus,
    TResult? Function()? getOrders,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult? Function(int orderId)? acceptOrder,
    TResult? Function(int orderId)? waitingForClient,
    TResult? Function(int orderId)? startRoute,
    TResult? Function(int orderId)? completeOrder,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function(OrderEntity newOrder)? updateOrderList,
  }) {
    return cancelOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int orderId)? getOrderStatus,
    TResult Function()? getOrders,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult Function(int orderId)? acceptOrder,
    TResult Function(int orderId)? waitingForClient,
    TResult Function(int orderId)? startRoute,
    TResult Function(int orderId)? completeOrder,
    TResult Function(int orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function(OrderEntity newOrder)? updateOrderList,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderStatus value) getOrderStatus,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_WaitingForClient value) waitingForClient,
    required TResult Function(_StartRoute value) startRoute,
    required TResult Function(_CompleteOrder value) completeOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_GetNewOrder value) getNewOrder,
    required TResult Function(_UpdateOrderList value) updateOrderList,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_WaitingForClient value)? waitingForClient,
    TResult? Function(_StartRoute value)? startRoute,
    TResult? Function(_CompleteOrder value)? completeOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_GetNewOrder value)? getNewOrder,
    TResult? Function(_UpdateOrderList value)? updateOrderList,
  }) {
    return cancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_WaitingForClient value)? waitingForClient,
    TResult Function(_StartRoute value)? startRoute,
    TResult Function(_CompleteOrder value)? completeOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_GetNewOrder value)? getNewOrder,
    TResult Function(_UpdateOrderList value)? updateOrderList,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class _CancelOrder implements DriverOrderEvent {
  const factory _CancelOrder({required final int orderId}) = _$CancelOrderImpl;

  int get orderId;
  @JsonKey(ignore: true)
  _$$CancelOrderImplCopyWith<_$CancelOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNewOrderImplCopyWith<$Res> {
  factory _$$GetNewOrderImplCopyWith(
          _$GetNewOrderImpl value, $Res Function(_$GetNewOrderImpl) then) =
      __$$GetNewOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNewOrderImplCopyWithImpl<$Res>
    extends _$DriverOrderEventCopyWithImpl<$Res, _$GetNewOrderImpl>
    implements _$$GetNewOrderImplCopyWith<$Res> {
  __$$GetNewOrderImplCopyWithImpl(
      _$GetNewOrderImpl _value, $Res Function(_$GetNewOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNewOrderImpl implements _GetNewOrder {
  const _$GetNewOrderImpl();

  @override
  String toString() {
    return 'DriverOrderEvent.getNewOrder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNewOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int orderId) getOrderStatus,
    required TResult Function() getOrders,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
    required TResult Function(int orderId) acceptOrder,
    required TResult Function(int orderId) waitingForClient,
    required TResult Function(int orderId) startRoute,
    required TResult Function(int orderId) completeOrder,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function(OrderEntity newOrder) updateOrderList,
  }) {
    return getNewOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int orderId)? getOrderStatus,
    TResult? Function()? getOrders,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult? Function(int orderId)? acceptOrder,
    TResult? Function(int orderId)? waitingForClient,
    TResult? Function(int orderId)? startRoute,
    TResult? Function(int orderId)? completeOrder,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function(OrderEntity newOrder)? updateOrderList,
  }) {
    return getNewOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int orderId)? getOrderStatus,
    TResult Function()? getOrders,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult Function(int orderId)? acceptOrder,
    TResult Function(int orderId)? waitingForClient,
    TResult Function(int orderId)? startRoute,
    TResult Function(int orderId)? completeOrder,
    TResult Function(int orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function(OrderEntity newOrder)? updateOrderList,
    required TResult orElse(),
  }) {
    if (getNewOrder != null) {
      return getNewOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderStatus value) getOrderStatus,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_WaitingForClient value) waitingForClient,
    required TResult Function(_StartRoute value) startRoute,
    required TResult Function(_CompleteOrder value) completeOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_GetNewOrder value) getNewOrder,
    required TResult Function(_UpdateOrderList value) updateOrderList,
  }) {
    return getNewOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_WaitingForClient value)? waitingForClient,
    TResult? Function(_StartRoute value)? startRoute,
    TResult? Function(_CompleteOrder value)? completeOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_GetNewOrder value)? getNewOrder,
    TResult? Function(_UpdateOrderList value)? updateOrderList,
  }) {
    return getNewOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_WaitingForClient value)? waitingForClient,
    TResult Function(_StartRoute value)? startRoute,
    TResult Function(_CompleteOrder value)? completeOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_GetNewOrder value)? getNewOrder,
    TResult Function(_UpdateOrderList value)? updateOrderList,
    required TResult orElse(),
  }) {
    if (getNewOrder != null) {
      return getNewOrder(this);
    }
    return orElse();
  }
}

abstract class _GetNewOrder implements DriverOrderEvent {
  const factory _GetNewOrder() = _$GetNewOrderImpl;
}

/// @nodoc
abstract class _$$UpdateOrderListImplCopyWith<$Res> {
  factory _$$UpdateOrderListImplCopyWith(_$UpdateOrderListImpl value,
          $Res Function(_$UpdateOrderListImpl) then) =
      __$$UpdateOrderListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderEntity newOrder});

  $OrderEntityCopyWith<$Res> get newOrder;
}

/// @nodoc
class __$$UpdateOrderListImplCopyWithImpl<$Res>
    extends _$DriverOrderEventCopyWithImpl<$Res, _$UpdateOrderListImpl>
    implements _$$UpdateOrderListImplCopyWith<$Res> {
  __$$UpdateOrderListImplCopyWithImpl(
      _$UpdateOrderListImpl _value, $Res Function(_$UpdateOrderListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newOrder = null,
  }) {
    return _then(_$UpdateOrderListImpl(
      newOrder: null == newOrder
          ? _value.newOrder
          : newOrder // ignore: cast_nullable_to_non_nullable
              as OrderEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderEntityCopyWith<$Res> get newOrder {
    return $OrderEntityCopyWith<$Res>(_value.newOrder, (value) {
      return _then(_value.copyWith(newOrder: value));
    });
  }
}

/// @nodoc

class _$UpdateOrderListImpl implements _UpdateOrderList {
  const _$UpdateOrderListImpl({required this.newOrder});

  @override
  final OrderEntity newOrder;

  @override
  String toString() {
    return 'DriverOrderEvent.updateOrderList(newOrder: $newOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderListImpl &&
            (identical(other.newOrder, newOrder) ||
                other.newOrder == newOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderListImplCopyWith<_$UpdateOrderListImpl> get copyWith =>
      __$$UpdateOrderListImplCopyWithImpl<_$UpdateOrderListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int orderId) getOrderStatus,
    required TResult Function() getOrders,
    required TResult Function(GetOrderStatusResponse updateOrderStatus)
        updateOrderStatus,
    required TResult Function(int orderId) acceptOrder,
    required TResult Function(int orderId) waitingForClient,
    required TResult Function(int orderId) startRoute,
    required TResult Function(int orderId) completeOrder,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function(OrderEntity newOrder) updateOrderList,
  }) {
    return updateOrderList(newOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int orderId)? getOrderStatus,
    TResult? Function()? getOrders,
    TResult? Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult? Function(int orderId)? acceptOrder,
    TResult? Function(int orderId)? waitingForClient,
    TResult? Function(int orderId)? startRoute,
    TResult? Function(int orderId)? completeOrder,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function(OrderEntity newOrder)? updateOrderList,
  }) {
    return updateOrderList?.call(newOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int orderId)? getOrderStatus,
    TResult Function()? getOrders,
    TResult Function(GetOrderStatusResponse updateOrderStatus)?
        updateOrderStatus,
    TResult Function(int orderId)? acceptOrder,
    TResult Function(int orderId)? waitingForClient,
    TResult Function(int orderId)? startRoute,
    TResult Function(int orderId)? completeOrder,
    TResult Function(int orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function(OrderEntity newOrder)? updateOrderList,
    required TResult orElse(),
  }) {
    if (updateOrderList != null) {
      return updateOrderList(newOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderStatus value) getOrderStatus,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_WaitingForClient value) waitingForClient,
    required TResult Function(_StartRoute value) startRoute,
    required TResult Function(_CompleteOrder value) completeOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_GetNewOrder value) getNewOrder,
    required TResult Function(_UpdateOrderList value) updateOrderList,
  }) {
    return updateOrderList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderStatus value)? getOrderStatus,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_WaitingForClient value)? waitingForClient,
    TResult? Function(_StartRoute value)? startRoute,
    TResult? Function(_CompleteOrder value)? completeOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_GetNewOrder value)? getNewOrder,
    TResult? Function(_UpdateOrderList value)? updateOrderList,
  }) {
    return updateOrderList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderStatus value)? getOrderStatus,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_WaitingForClient value)? waitingForClient,
    TResult Function(_StartRoute value)? startRoute,
    TResult Function(_CompleteOrder value)? completeOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_GetNewOrder value)? getNewOrder,
    TResult Function(_UpdateOrderList value)? updateOrderList,
    required TResult orElse(),
  }) {
    if (updateOrderList != null) {
      return updateOrderList(this);
    }
    return orElse();
  }
}

abstract class _UpdateOrderList implements DriverOrderEvent {
  const factory _UpdateOrderList({required final OrderEntity newOrder}) =
      _$UpdateOrderListImpl;

  OrderEntity get newOrder;
  @JsonKey(ignore: true)
  _$$UpdateOrderListImplCopyWith<_$UpdateOrderListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DriverOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waiting,
    required TResult Function() start,
    required TResult Function(DriverOrderViewModel viewModel) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waiting,
    TResult? Function()? start,
    TResult? Function(DriverOrderViewModel viewModel)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waiting,
    TResult Function()? start,
    TResult Function(DriverOrderViewModel viewModel)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Start value) start,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Start value)? start,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
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
    required TResult Function() waiting,
    required TResult Function() start,
    required TResult Function(DriverOrderViewModel viewModel) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waiting,
    TResult? Function()? start,
    TResult? Function(DriverOrderViewModel viewModel)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waiting,
    TResult Function()? start,
    TResult Function(DriverOrderViewModel viewModel)? loaded,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Start value) start,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Start value)? start,
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

abstract class _Initial implements DriverOrderState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$WaitingImplCopyWith<$Res> {
  factory _$$WaitingImplCopyWith(
          _$WaitingImpl value, $Res Function(_$WaitingImpl) then) =
      __$$WaitingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WaitingImplCopyWithImpl<$Res>
    extends _$DriverOrderStateCopyWithImpl<$Res, _$WaitingImpl>
    implements _$$WaitingImplCopyWith<$Res> {
  __$$WaitingImplCopyWithImpl(
      _$WaitingImpl _value, $Res Function(_$WaitingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WaitingImpl implements _Waiting {
  const _$WaitingImpl();

  @override
  String toString() {
    return 'DriverOrderState.waiting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WaitingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waiting,
    required TResult Function() start,
    required TResult Function(DriverOrderViewModel viewModel) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waiting,
    TResult? Function()? start,
    TResult? Function(DriverOrderViewModel viewModel)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waiting,
    TResult Function()? start,
    TResult Function(DriverOrderViewModel viewModel)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Start value) start,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Start value)? start,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class _Waiting implements DriverOrderState {
  const factory _Waiting() = _$WaitingImpl;
}

/// @nodoc
abstract class _$$StartImplCopyWith<$Res> {
  factory _$$StartImplCopyWith(
          _$StartImpl value, $Res Function(_$StartImpl) then) =
      __$$StartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartImplCopyWithImpl<$Res>
    extends _$DriverOrderStateCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
      _$StartImpl _value, $Res Function(_$StartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartImpl implements _Start {
  const _$StartImpl();

  @override
  String toString() {
    return 'DriverOrderState.start()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waiting,
    required TResult Function() start,
    required TResult Function(DriverOrderViewModel viewModel) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waiting,
    TResult? Function()? start,
    TResult? Function(DriverOrderViewModel viewModel)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waiting,
    TResult Function()? start,
    TResult Function(DriverOrderViewModel viewModel)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Start value) start,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Start value)? start,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements DriverOrderState {
  const factory _Start() = _$StartImpl;
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
    required TResult Function() waiting,
    required TResult Function() start,
    required TResult Function(DriverOrderViewModel viewModel) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waiting,
    TResult? Function()? start,
    TResult? Function(DriverOrderViewModel viewModel)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waiting,
    TResult Function()? start,
    TResult Function(DriverOrderViewModel viewModel)? loaded,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Start value) start,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Start value)? start,
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

abstract class _Loaded implements DriverOrderState {
  const factory _Loaded({required final DriverOrderViewModel viewModel}) =
      _$LoadedImpl;

  DriverOrderViewModel get viewModel;
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
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$DriverOrderStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DriverOrderState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waiting,
    required TResult Function() start,
    required TResult Function(DriverOrderViewModel viewModel) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waiting,
    TResult? Function()? start,
    TResult? Function(DriverOrderViewModel viewModel)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waiting,
    TResult Function()? start,
    TResult Function(DriverOrderViewModel viewModel)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Start value) start,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Start value)? start,
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

abstract class _Error implements DriverOrderState {
  const factory _Error(final String errorMessage) = _$ErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DriverOrderViewModel {
  String? get updatedOrderStatus => throw _privateConstructorUsedError;
  List<OrderEntity> get ordersList => throw _privateConstructorUsedError;
  OrderEntity? get activeOrder => throw _privateConstructorUsedError;

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
  $Res call(
      {String? updatedOrderStatus,
      List<OrderEntity> ordersList,
      OrderEntity? activeOrder});

  $OrderEntityCopyWith<$Res>? get activeOrder;
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
    Object? ordersList = null,
    Object? activeOrder = freezed,
  }) {
    return _then(_value.copyWith(
      updatedOrderStatus: freezed == updatedOrderStatus
          ? _value.updatedOrderStatus
          : updatedOrderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      ordersList: null == ordersList
          ? _value.ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      activeOrder: freezed == activeOrder
          ? _value.activeOrder
          : activeOrder // ignore: cast_nullable_to_non_nullable
              as OrderEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderEntityCopyWith<$Res>? get activeOrder {
    if (_value.activeOrder == null) {
      return null;
    }

    return $OrderEntityCopyWith<$Res>(_value.activeOrder!, (value) {
      return _then(_value.copyWith(activeOrder: value) as $Val);
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
  $Res call(
      {String? updatedOrderStatus,
      List<OrderEntity> ordersList,
      OrderEntity? activeOrder});

  @override
  $OrderEntityCopyWith<$Res>? get activeOrder;
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
    Object? ordersList = null,
    Object? activeOrder = freezed,
  }) {
    return _then(_$DriverOrderViewModelImpl(
      updatedOrderStatus: freezed == updatedOrderStatus
          ? _value.updatedOrderStatus
          : updatedOrderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      ordersList: null == ordersList
          ? _value._ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      activeOrder: freezed == activeOrder
          ? _value.activeOrder
          : activeOrder // ignore: cast_nullable_to_non_nullable
              as OrderEntity?,
    ));
  }
}

/// @nodoc

class _$DriverOrderViewModelImpl implements _DriverOrderViewModel {
  const _$DriverOrderViewModelImpl(
      {this.updatedOrderStatus,
      final List<OrderEntity> ordersList = const [],
      this.activeOrder})
      : _ordersList = ordersList;

  @override
  final String? updatedOrderStatus;
  final List<OrderEntity> _ordersList;
  @override
  @JsonKey()
  List<OrderEntity> get ordersList {
    if (_ordersList is EqualUnmodifiableListView) return _ordersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ordersList);
  }

  @override
  final OrderEntity? activeOrder;

  @override
  String toString() {
    return 'DriverOrderViewModel(updatedOrderStatus: $updatedOrderStatus, ordersList: $ordersList, activeOrder: $activeOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOrderViewModelImpl &&
            (identical(other.updatedOrderStatus, updatedOrderStatus) ||
                other.updatedOrderStatus == updatedOrderStatus) &&
            const DeepCollectionEquality()
                .equals(other._ordersList, _ordersList) &&
            (identical(other.activeOrder, activeOrder) ||
                other.activeOrder == activeOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedOrderStatus,
      const DeepCollectionEquality().hash(_ordersList), activeOrder);

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
      {final String? updatedOrderStatus,
      final List<OrderEntity> ordersList,
      final OrderEntity? activeOrder}) = _$DriverOrderViewModelImpl;

  @override
  String? get updatedOrderStatus;
  @override
  List<OrderEntity> get ordersList;
  @override
  OrderEntity? get activeOrder;
  @override
  @JsonKey(ignore: true)
  _$$DriverOrderViewModelImplCopyWith<_$DriverOrderViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
