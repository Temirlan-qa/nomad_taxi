// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searched_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchedOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSearchedOrder,
    required TResult Function() getCashbackInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSearchedOrder,
    TResult? Function()? getCashbackInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSearchedOrder,
    TResult Function()? getCashbackInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSearchedOrder value) getSearchedOrder,
    required TResult Function(_GetCashbackInfo value) getCashbackInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSearchedOrder value)? getSearchedOrder,
    TResult? Function(_GetCashbackInfo value)? getCashbackInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSearchedOrder value)? getSearchedOrder,
    TResult Function(_GetCashbackInfo value)? getCashbackInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedOrderEventCopyWith<$Res> {
  factory $SearchedOrderEventCopyWith(
          SearchedOrderEvent value, $Res Function(SearchedOrderEvent) then) =
      _$SearchedOrderEventCopyWithImpl<$Res, SearchedOrderEvent>;
}

/// @nodoc
class _$SearchedOrderEventCopyWithImpl<$Res, $Val extends SearchedOrderEvent>
    implements $SearchedOrderEventCopyWith<$Res> {
  _$SearchedOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSearchedOrderImplCopyWith<$Res> {
  factory _$$GetSearchedOrderImplCopyWith(_$GetSearchedOrderImpl value,
          $Res Function(_$GetSearchedOrderImpl) then) =
      __$$GetSearchedOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSearchedOrderImplCopyWithImpl<$Res>
    extends _$SearchedOrderEventCopyWithImpl<$Res, _$GetSearchedOrderImpl>
    implements _$$GetSearchedOrderImplCopyWith<$Res> {
  __$$GetSearchedOrderImplCopyWithImpl(_$GetSearchedOrderImpl _value,
      $Res Function(_$GetSearchedOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSearchedOrderImpl implements _GetSearchedOrder {
  const _$GetSearchedOrderImpl();

  @override
  String toString() {
    return 'SearchedOrderEvent.getSearchedOrder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSearchedOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSearchedOrder,
    required TResult Function() getCashbackInfo,
  }) {
    return getSearchedOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSearchedOrder,
    TResult? Function()? getCashbackInfo,
  }) {
    return getSearchedOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSearchedOrder,
    TResult Function()? getCashbackInfo,
    required TResult orElse(),
  }) {
    if (getSearchedOrder != null) {
      return getSearchedOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSearchedOrder value) getSearchedOrder,
    required TResult Function(_GetCashbackInfo value) getCashbackInfo,
  }) {
    return getSearchedOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSearchedOrder value)? getSearchedOrder,
    TResult? Function(_GetCashbackInfo value)? getCashbackInfo,
  }) {
    return getSearchedOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSearchedOrder value)? getSearchedOrder,
    TResult Function(_GetCashbackInfo value)? getCashbackInfo,
    required TResult orElse(),
  }) {
    if (getSearchedOrder != null) {
      return getSearchedOrder(this);
    }
    return orElse();
  }
}

abstract class _GetSearchedOrder implements SearchedOrderEvent {
  const factory _GetSearchedOrder() = _$GetSearchedOrderImpl;
}

/// @nodoc
abstract class _$$GetCashbackInfoImplCopyWith<$Res> {
  factory _$$GetCashbackInfoImplCopyWith(_$GetCashbackInfoImpl value,
          $Res Function(_$GetCashbackInfoImpl) then) =
      __$$GetCashbackInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCashbackInfoImplCopyWithImpl<$Res>
    extends _$SearchedOrderEventCopyWithImpl<$Res, _$GetCashbackInfoImpl>
    implements _$$GetCashbackInfoImplCopyWith<$Res> {
  __$$GetCashbackInfoImplCopyWithImpl(
      _$GetCashbackInfoImpl _value, $Res Function(_$GetCashbackInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCashbackInfoImpl implements _GetCashbackInfo {
  const _$GetCashbackInfoImpl();

  @override
  String toString() {
    return 'SearchedOrderEvent.getCashbackInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCashbackInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSearchedOrder,
    required TResult Function() getCashbackInfo,
  }) {
    return getCashbackInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSearchedOrder,
    TResult? Function()? getCashbackInfo,
  }) {
    return getCashbackInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSearchedOrder,
    TResult Function()? getCashbackInfo,
    required TResult orElse(),
  }) {
    if (getCashbackInfo != null) {
      return getCashbackInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSearchedOrder value) getSearchedOrder,
    required TResult Function(_GetCashbackInfo value) getCashbackInfo,
  }) {
    return getCashbackInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSearchedOrder value)? getSearchedOrder,
    TResult? Function(_GetCashbackInfo value)? getCashbackInfo,
  }) {
    return getCashbackInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSearchedOrder value)? getSearchedOrder,
    TResult Function(_GetCashbackInfo value)? getCashbackInfo,
    required TResult orElse(),
  }) {
    if (getCashbackInfo != null) {
      return getCashbackInfo(this);
    }
    return orElse();
  }
}

abstract class _GetCashbackInfo implements SearchedOrderEvent {
  const factory _GetCashbackInfo() = _$GetCashbackInfoImpl;
}

/// @nodoc
mixin _$SearchedOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SearchedOrderViewModel viewModel) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SearchedOrderViewModel viewModel)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchedOrderViewModel viewModel)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedOrderStateCopyWith<$Res> {
  factory $SearchedOrderStateCopyWith(
          SearchedOrderState value, $Res Function(SearchedOrderState) then) =
      _$SearchedOrderStateCopyWithImpl<$Res, SearchedOrderState>;
}

/// @nodoc
class _$SearchedOrderStateCopyWithImpl<$Res, $Val extends SearchedOrderState>
    implements $SearchedOrderStateCopyWith<$Res> {
  _$SearchedOrderStateCopyWithImpl(this._value, this._then);

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
    extends _$SearchedOrderStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SearchedOrderState.initial()';
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
    required TResult Function() loading,
    required TResult Function(SearchedOrderViewModel viewModel) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SearchedOrderViewModel viewModel)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchedOrderViewModel viewModel)? loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchedOrderState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SearchedOrderStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SearchedOrderState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SearchedOrderViewModel viewModel) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SearchedOrderViewModel viewModel)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchedOrderViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SearchedOrderState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchedOrderViewModel viewModel});

  $SearchedOrderViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SearchedOrderStateCopyWithImpl<$Res, _$LoadedImpl>
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
              as SearchedOrderViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchedOrderViewModelCopyWith<$Res> get viewModel {
    return $SearchedOrderViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.viewModel});

  @override
  final SearchedOrderViewModel viewModel;

  @override
  String toString() {
    return 'SearchedOrderState.loaded(viewModel: $viewModel)';
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
    required TResult Function() loading,
    required TResult Function(SearchedOrderViewModel viewModel) loaded,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SearchedOrderViewModel viewModel)? loaded,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchedOrderViewModel viewModel)? loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SearchedOrderState {
  const factory _Loaded({required final SearchedOrderViewModel viewModel}) =
      _$LoadedImpl;

  SearchedOrderViewModel get viewModel;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchedOrderViewModel {
  SearchedOrderEntity? get searchedOrderEntity =>
      throw _privateConstructorUsedError;
  CashbackInfo? get cashbackInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchedOrderViewModelCopyWith<SearchedOrderViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedOrderViewModelCopyWith<$Res> {
  factory $SearchedOrderViewModelCopyWith(SearchedOrderViewModel value,
          $Res Function(SearchedOrderViewModel) then) =
      _$SearchedOrderViewModelCopyWithImpl<$Res, SearchedOrderViewModel>;
  @useResult
  $Res call(
      {SearchedOrderEntity? searchedOrderEntity, CashbackInfo? cashbackInfo});

  $SearchedOrderEntityCopyWith<$Res>? get searchedOrderEntity;
  $CashbackInfoCopyWith<$Res>? get cashbackInfo;
}

/// @nodoc
class _$SearchedOrderViewModelCopyWithImpl<$Res,
        $Val extends SearchedOrderViewModel>
    implements $SearchedOrderViewModelCopyWith<$Res> {
  _$SearchedOrderViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchedOrderEntity = freezed,
    Object? cashbackInfo = freezed,
  }) {
    return _then(_value.copyWith(
      searchedOrderEntity: freezed == searchedOrderEntity
          ? _value.searchedOrderEntity
          : searchedOrderEntity // ignore: cast_nullable_to_non_nullable
              as SearchedOrderEntity?,
      cashbackInfo: freezed == cashbackInfo
          ? _value.cashbackInfo
          : cashbackInfo // ignore: cast_nullable_to_non_nullable
              as CashbackInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchedOrderEntityCopyWith<$Res>? get searchedOrderEntity {
    if (_value.searchedOrderEntity == null) {
      return null;
    }

    return $SearchedOrderEntityCopyWith<$Res>(_value.searchedOrderEntity!,
        (value) {
      return _then(_value.copyWith(searchedOrderEntity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CashbackInfoCopyWith<$Res>? get cashbackInfo {
    if (_value.cashbackInfo == null) {
      return null;
    }

    return $CashbackInfoCopyWith<$Res>(_value.cashbackInfo!, (value) {
      return _then(_value.copyWith(cashbackInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchedOrderViewModelImplCopyWith<$Res>
    implements $SearchedOrderViewModelCopyWith<$Res> {
  factory _$$SearchedOrderViewModelImplCopyWith(
          _$SearchedOrderViewModelImpl value,
          $Res Function(_$SearchedOrderViewModelImpl) then) =
      __$$SearchedOrderViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchedOrderEntity? searchedOrderEntity, CashbackInfo? cashbackInfo});

  @override
  $SearchedOrderEntityCopyWith<$Res>? get searchedOrderEntity;
  @override
  $CashbackInfoCopyWith<$Res>? get cashbackInfo;
}

/// @nodoc
class __$$SearchedOrderViewModelImplCopyWithImpl<$Res>
    extends _$SearchedOrderViewModelCopyWithImpl<$Res,
        _$SearchedOrderViewModelImpl>
    implements _$$SearchedOrderViewModelImplCopyWith<$Res> {
  __$$SearchedOrderViewModelImplCopyWithImpl(
      _$SearchedOrderViewModelImpl _value,
      $Res Function(_$SearchedOrderViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchedOrderEntity = freezed,
    Object? cashbackInfo = freezed,
  }) {
    return _then(_$SearchedOrderViewModelImpl(
      searchedOrderEntity: freezed == searchedOrderEntity
          ? _value.searchedOrderEntity
          : searchedOrderEntity // ignore: cast_nullable_to_non_nullable
              as SearchedOrderEntity?,
      cashbackInfo: freezed == cashbackInfo
          ? _value.cashbackInfo
          : cashbackInfo // ignore: cast_nullable_to_non_nullable
              as CashbackInfo?,
    ));
  }
}

/// @nodoc

class _$SearchedOrderViewModelImpl implements _SearchedOrderViewModel {
  _$SearchedOrderViewModelImpl({this.searchedOrderEntity, this.cashbackInfo});

  @override
  final SearchedOrderEntity? searchedOrderEntity;
  @override
  final CashbackInfo? cashbackInfo;

  @override
  String toString() {
    return 'SearchedOrderViewModel(searchedOrderEntity: $searchedOrderEntity, cashbackInfo: $cashbackInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedOrderViewModelImpl &&
            (identical(other.searchedOrderEntity, searchedOrderEntity) ||
                other.searchedOrderEntity == searchedOrderEntity) &&
            (identical(other.cashbackInfo, cashbackInfo) ||
                other.cashbackInfo == cashbackInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, searchedOrderEntity, cashbackInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedOrderViewModelImplCopyWith<_$SearchedOrderViewModelImpl>
      get copyWith => __$$SearchedOrderViewModelImplCopyWithImpl<
          _$SearchedOrderViewModelImpl>(this, _$identity);
}

abstract class _SearchedOrderViewModel implements SearchedOrderViewModel {
  factory _SearchedOrderViewModel(
      {final SearchedOrderEntity? searchedOrderEntity,
      final CashbackInfo? cashbackInfo}) = _$SearchedOrderViewModelImpl;

  @override
  SearchedOrderEntity? get searchedOrderEntity;
  @override
  CashbackInfo? get cashbackInfo;
  @override
  @JsonKey(ignore: true)
  _$$SearchedOrderViewModelImplCopyWith<_$SearchedOrderViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
