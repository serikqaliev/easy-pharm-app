// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Medicine medicine) addToCart,
    required TResult Function(Medicine medicine) removeFromCart,
    required TResult Function(CartItem cartItem) removeCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Medicine medicine)? addToCart,
    TResult? Function(Medicine medicine)? removeFromCart,
    TResult? Function(CartItem cartItem)? removeCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Medicine medicine)? addToCart,
    TResult Function(Medicine medicine)? removeFromCart,
    TResult Function(CartItem cartItem)? removeCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartEvent$Init value) init,
    required TResult Function(CartEvent$AddToCart value) addToCart,
    required TResult Function(CartEvent$RemoveFromCart value) removeFromCart,
    required TResult Function(CartEvent$RemoveCartItem value) removeCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartEvent$Init value)? init,
    TResult? Function(CartEvent$AddToCart value)? addToCart,
    TResult? Function(CartEvent$RemoveFromCart value)? removeFromCart,
    TResult? Function(CartEvent$RemoveCartItem value)? removeCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartEvent$Init value)? init,
    TResult Function(CartEvent$AddToCart value)? addToCart,
    TResult Function(CartEvent$RemoveFromCart value)? removeFromCart,
    TResult Function(CartEvent$RemoveCartItem value)? removeCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CartEvent$InitImplCopyWith<$Res> {
  factory _$$CartEvent$InitImplCopyWith(_$CartEvent$InitImpl value,
          $Res Function(_$CartEvent$InitImpl) then) =
      __$$CartEvent$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartEvent$InitImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEvent$InitImpl>
    implements _$$CartEvent$InitImplCopyWith<$Res> {
  __$$CartEvent$InitImplCopyWithImpl(
      _$CartEvent$InitImpl _value, $Res Function(_$CartEvent$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartEvent$InitImpl implements CartEvent$Init {
  const _$CartEvent$InitImpl();

  @override
  String toString() {
    return 'CartEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartEvent$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Medicine medicine) addToCart,
    required TResult Function(Medicine medicine) removeFromCart,
    required TResult Function(CartItem cartItem) removeCartItem,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Medicine medicine)? addToCart,
    TResult? Function(Medicine medicine)? removeFromCart,
    TResult? Function(CartItem cartItem)? removeCartItem,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Medicine medicine)? addToCart,
    TResult Function(Medicine medicine)? removeFromCart,
    TResult Function(CartItem cartItem)? removeCartItem,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartEvent$Init value) init,
    required TResult Function(CartEvent$AddToCart value) addToCart,
    required TResult Function(CartEvent$RemoveFromCart value) removeFromCart,
    required TResult Function(CartEvent$RemoveCartItem value) removeCartItem,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartEvent$Init value)? init,
    TResult? Function(CartEvent$AddToCart value)? addToCart,
    TResult? Function(CartEvent$RemoveFromCart value)? removeFromCart,
    TResult? Function(CartEvent$RemoveCartItem value)? removeCartItem,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartEvent$Init value)? init,
    TResult Function(CartEvent$AddToCart value)? addToCart,
    TResult Function(CartEvent$RemoveFromCart value)? removeFromCart,
    TResult Function(CartEvent$RemoveCartItem value)? removeCartItem,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class CartEvent$Init implements CartEvent {
  const factory CartEvent$Init() = _$CartEvent$InitImpl;
}

/// @nodoc
abstract class _$$CartEvent$AddToCartImplCopyWith<$Res> {
  factory _$$CartEvent$AddToCartImplCopyWith(_$CartEvent$AddToCartImpl value,
          $Res Function(_$CartEvent$AddToCartImpl) then) =
      __$$CartEvent$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Medicine medicine});
}

/// @nodoc
class __$$CartEvent$AddToCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEvent$AddToCartImpl>
    implements _$$CartEvent$AddToCartImplCopyWith<$Res> {
  __$$CartEvent$AddToCartImplCopyWithImpl(_$CartEvent$AddToCartImpl _value,
      $Res Function(_$CartEvent$AddToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicine = null,
  }) {
    return _then(_$CartEvent$AddToCartImpl(
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as Medicine,
    ));
  }
}

/// @nodoc

class _$CartEvent$AddToCartImpl implements CartEvent$AddToCart {
  const _$CartEvent$AddToCartImpl({required this.medicine});

  @override
  final Medicine medicine;

  @override
  String toString() {
    return 'CartEvent.addToCart(medicine: $medicine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEvent$AddToCartImpl &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEvent$AddToCartImplCopyWith<_$CartEvent$AddToCartImpl> get copyWith =>
      __$$CartEvent$AddToCartImplCopyWithImpl<_$CartEvent$AddToCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Medicine medicine) addToCart,
    required TResult Function(Medicine medicine) removeFromCart,
    required TResult Function(CartItem cartItem) removeCartItem,
  }) {
    return addToCart(medicine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Medicine medicine)? addToCart,
    TResult? Function(Medicine medicine)? removeFromCart,
    TResult? Function(CartItem cartItem)? removeCartItem,
  }) {
    return addToCart?.call(medicine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Medicine medicine)? addToCart,
    TResult Function(Medicine medicine)? removeFromCart,
    TResult Function(CartItem cartItem)? removeCartItem,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(medicine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartEvent$Init value) init,
    required TResult Function(CartEvent$AddToCart value) addToCart,
    required TResult Function(CartEvent$RemoveFromCart value) removeFromCart,
    required TResult Function(CartEvent$RemoveCartItem value) removeCartItem,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartEvent$Init value)? init,
    TResult? Function(CartEvent$AddToCart value)? addToCart,
    TResult? Function(CartEvent$RemoveFromCart value)? removeFromCart,
    TResult? Function(CartEvent$RemoveCartItem value)? removeCartItem,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartEvent$Init value)? init,
    TResult Function(CartEvent$AddToCart value)? addToCart,
    TResult Function(CartEvent$RemoveFromCart value)? removeFromCart,
    TResult Function(CartEvent$RemoveCartItem value)? removeCartItem,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class CartEvent$AddToCart implements CartEvent {
  const factory CartEvent$AddToCart({required final Medicine medicine}) =
      _$CartEvent$AddToCartImpl;

  Medicine get medicine;
  @JsonKey(ignore: true)
  _$$CartEvent$AddToCartImplCopyWith<_$CartEvent$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartEvent$RemoveFromCartImplCopyWith<$Res> {
  factory _$$CartEvent$RemoveFromCartImplCopyWith(
          _$CartEvent$RemoveFromCartImpl value,
          $Res Function(_$CartEvent$RemoveFromCartImpl) then) =
      __$$CartEvent$RemoveFromCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Medicine medicine});
}

/// @nodoc
class __$$CartEvent$RemoveFromCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEvent$RemoveFromCartImpl>
    implements _$$CartEvent$RemoveFromCartImplCopyWith<$Res> {
  __$$CartEvent$RemoveFromCartImplCopyWithImpl(
      _$CartEvent$RemoveFromCartImpl _value,
      $Res Function(_$CartEvent$RemoveFromCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicine = null,
  }) {
    return _then(_$CartEvent$RemoveFromCartImpl(
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as Medicine,
    ));
  }
}

/// @nodoc

class _$CartEvent$RemoveFromCartImpl implements CartEvent$RemoveFromCart {
  const _$CartEvent$RemoveFromCartImpl({required this.medicine});

  @override
  final Medicine medicine;

  @override
  String toString() {
    return 'CartEvent.removeFromCart(medicine: $medicine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEvent$RemoveFromCartImpl &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEvent$RemoveFromCartImplCopyWith<_$CartEvent$RemoveFromCartImpl>
      get copyWith => __$$CartEvent$RemoveFromCartImplCopyWithImpl<
          _$CartEvent$RemoveFromCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Medicine medicine) addToCart,
    required TResult Function(Medicine medicine) removeFromCart,
    required TResult Function(CartItem cartItem) removeCartItem,
  }) {
    return removeFromCart(medicine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Medicine medicine)? addToCart,
    TResult? Function(Medicine medicine)? removeFromCart,
    TResult? Function(CartItem cartItem)? removeCartItem,
  }) {
    return removeFromCart?.call(medicine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Medicine medicine)? addToCart,
    TResult Function(Medicine medicine)? removeFromCart,
    TResult Function(CartItem cartItem)? removeCartItem,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(medicine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartEvent$Init value) init,
    required TResult Function(CartEvent$AddToCart value) addToCart,
    required TResult Function(CartEvent$RemoveFromCart value) removeFromCart,
    required TResult Function(CartEvent$RemoveCartItem value) removeCartItem,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartEvent$Init value)? init,
    TResult? Function(CartEvent$AddToCart value)? addToCart,
    TResult? Function(CartEvent$RemoveFromCart value)? removeFromCart,
    TResult? Function(CartEvent$RemoveCartItem value)? removeCartItem,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartEvent$Init value)? init,
    TResult Function(CartEvent$AddToCart value)? addToCart,
    TResult Function(CartEvent$RemoveFromCart value)? removeFromCart,
    TResult Function(CartEvent$RemoveCartItem value)? removeCartItem,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class CartEvent$RemoveFromCart implements CartEvent {
  const factory CartEvent$RemoveFromCart({required final Medicine medicine}) =
      _$CartEvent$RemoveFromCartImpl;

  Medicine get medicine;
  @JsonKey(ignore: true)
  _$$CartEvent$RemoveFromCartImplCopyWith<_$CartEvent$RemoveFromCartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartEvent$RemoveCartItemImplCopyWith<$Res> {
  factory _$$CartEvent$RemoveCartItemImplCopyWith(
          _$CartEvent$RemoveCartItemImpl value,
          $Res Function(_$CartEvent$RemoveCartItemImpl) then) =
      __$$CartEvent$RemoveCartItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartItem cartItem});
}

/// @nodoc
class __$$CartEvent$RemoveCartItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEvent$RemoveCartItemImpl>
    implements _$$CartEvent$RemoveCartItemImplCopyWith<$Res> {
  __$$CartEvent$RemoveCartItemImplCopyWithImpl(
      _$CartEvent$RemoveCartItemImpl _value,
      $Res Function(_$CartEvent$RemoveCartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
  }) {
    return _then(_$CartEvent$RemoveCartItemImpl(
      cartItem: null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartItem,
    ));
  }
}

/// @nodoc

class _$CartEvent$RemoveCartItemImpl implements CartEvent$RemoveCartItem {
  const _$CartEvent$RemoveCartItemImpl({required this.cartItem});

  @override
  final CartItem cartItem;

  @override
  String toString() {
    return 'CartEvent.removeCartItem(cartItem: $cartItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEvent$RemoveCartItemImpl &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEvent$RemoveCartItemImplCopyWith<_$CartEvent$RemoveCartItemImpl>
      get copyWith => __$$CartEvent$RemoveCartItemImplCopyWithImpl<
          _$CartEvent$RemoveCartItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Medicine medicine) addToCart,
    required TResult Function(Medicine medicine) removeFromCart,
    required TResult Function(CartItem cartItem) removeCartItem,
  }) {
    return removeCartItem(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Medicine medicine)? addToCart,
    TResult? Function(Medicine medicine)? removeFromCart,
    TResult? Function(CartItem cartItem)? removeCartItem,
  }) {
    return removeCartItem?.call(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Medicine medicine)? addToCart,
    TResult Function(Medicine medicine)? removeFromCart,
    TResult Function(CartItem cartItem)? removeCartItem,
    required TResult orElse(),
  }) {
    if (removeCartItem != null) {
      return removeCartItem(cartItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartEvent$Init value) init,
    required TResult Function(CartEvent$AddToCart value) addToCart,
    required TResult Function(CartEvent$RemoveFromCart value) removeFromCart,
    required TResult Function(CartEvent$RemoveCartItem value) removeCartItem,
  }) {
    return removeCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartEvent$Init value)? init,
    TResult? Function(CartEvent$AddToCart value)? addToCart,
    TResult? Function(CartEvent$RemoveFromCart value)? removeFromCart,
    TResult? Function(CartEvent$RemoveCartItem value)? removeCartItem,
  }) {
    return removeCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartEvent$Init value)? init,
    TResult Function(CartEvent$AddToCart value)? addToCart,
    TResult Function(CartEvent$RemoveFromCart value)? removeFromCart,
    TResult Function(CartEvent$RemoveCartItem value)? removeCartItem,
    required TResult orElse(),
  }) {
    if (removeCartItem != null) {
      return removeCartItem(this);
    }
    return orElse();
  }
}

abstract class CartEvent$RemoveCartItem implements CartEvent {
  const factory CartEvent$RemoveCartItem({required final CartItem cartItem}) =
      _$CartEvent$RemoveCartItemImpl;

  CartItem get cartItem;
  @JsonKey(ignore: true)
  _$$CartEvent$RemoveCartItemImplCopyWith<_$CartEvent$RemoveCartItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  List<CartItem> get cartItems => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CartItem> cartItems, String message, String? error)
        idle,
    required TResult Function(List<CartItem> cartItems, String message)
        processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> cartItems, String message, String? error)?
        idle,
    TResult? Function(List<CartItem> cartItems, String message)? processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> cartItems, String message, String? error)?
        idle,
    TResult Function(List<CartItem> cartItems, String message)? processing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartState$Idle value) idle,
    required TResult Function(CartState$Processing value) processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartState$Idle value)? idle,
    TResult? Function(CartState$Processing value)? processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartState$Idle value)? idle,
    TResult Function(CartState$Processing value)? processing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({List<CartItem> cartItems, String message});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartState$IdleImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartState$IdleImplCopyWith(_$CartState$IdleImpl value,
          $Res Function(_$CartState$IdleImpl) then) =
      __$$CartState$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartItem> cartItems, String message, String? error});
}

/// @nodoc
class __$$CartState$IdleImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartState$IdleImpl>
    implements _$$CartState$IdleImplCopyWith<$Res> {
  __$$CartState$IdleImplCopyWithImpl(
      _$CartState$IdleImpl _value, $Res Function(_$CartState$IdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
    Object? message = null,
    Object? error = freezed,
  }) {
    return _then(_$CartState$IdleImpl(
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CartState$IdleImpl extends CartState$Idle {
  const _$CartState$IdleImpl(
      {required final List<CartItem> cartItems,
      required this.message,
      this.error})
      : _cartItems = cartItems,
        super._();

  final List<CartItem> _cartItems;
  @override
  List<CartItem> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  final String message;
  @override
  final String? error;

  @override
  String toString() {
    return 'CartState.idle(cartItems: $cartItems, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartState$IdleImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_cartItems), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartState$IdleImplCopyWith<_$CartState$IdleImpl> get copyWith =>
      __$$CartState$IdleImplCopyWithImpl<_$CartState$IdleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CartItem> cartItems, String message, String? error)
        idle,
    required TResult Function(List<CartItem> cartItems, String message)
        processing,
  }) {
    return idle(cartItems, message, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> cartItems, String message, String? error)?
        idle,
    TResult? Function(List<CartItem> cartItems, String message)? processing,
  }) {
    return idle?.call(cartItems, message, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> cartItems, String message, String? error)?
        idle,
    TResult Function(List<CartItem> cartItems, String message)? processing,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(cartItems, message, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartState$Idle value) idle,
    required TResult Function(CartState$Processing value) processing,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartState$Idle value)? idle,
    TResult? Function(CartState$Processing value)? processing,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartState$Idle value)? idle,
    TResult Function(CartState$Processing value)? processing,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class CartState$Idle extends CartState {
  const factory CartState$Idle(
      {required final List<CartItem> cartItems,
      required final String message,
      final String? error}) = _$CartState$IdleImpl;
  const CartState$Idle._() : super._();

  @override
  List<CartItem> get cartItems;
  @override
  String get message;
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$CartState$IdleImplCopyWith<_$CartState$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartState$ProcessingImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartState$ProcessingImplCopyWith(_$CartState$ProcessingImpl value,
          $Res Function(_$CartState$ProcessingImpl) then) =
      __$$CartState$ProcessingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartItem> cartItems, String message});
}

/// @nodoc
class __$$CartState$ProcessingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartState$ProcessingImpl>
    implements _$$CartState$ProcessingImplCopyWith<$Res> {
  __$$CartState$ProcessingImplCopyWithImpl(_$CartState$ProcessingImpl _value,
      $Res Function(_$CartState$ProcessingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
    Object? message = null,
  }) {
    return _then(_$CartState$ProcessingImpl(
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartState$ProcessingImpl extends CartState$Processing {
  const _$CartState$ProcessingImpl(
      {required final List<CartItem> cartItems, required this.message})
      : _cartItems = cartItems,
        super._();

  final List<CartItem> _cartItems;
  @override
  List<CartItem> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.processing(cartItems: $cartItems, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartState$ProcessingImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cartItems), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartState$ProcessingImplCopyWith<_$CartState$ProcessingImpl>
      get copyWith =>
          __$$CartState$ProcessingImplCopyWithImpl<_$CartState$ProcessingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CartItem> cartItems, String message, String? error)
        idle,
    required TResult Function(List<CartItem> cartItems, String message)
        processing,
  }) {
    return processing(cartItems, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> cartItems, String message, String? error)?
        idle,
    TResult? Function(List<CartItem> cartItems, String message)? processing,
  }) {
    return processing?.call(cartItems, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> cartItems, String message, String? error)?
        idle,
    TResult Function(List<CartItem> cartItems, String message)? processing,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(cartItems, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartState$Idle value) idle,
    required TResult Function(CartState$Processing value) processing,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartState$Idle value)? idle,
    TResult? Function(CartState$Processing value)? processing,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartState$Idle value)? idle,
    TResult Function(CartState$Processing value)? processing,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class CartState$Processing extends CartState {
  const factory CartState$Processing(
      {required final List<CartItem> cartItems,
      required final String message}) = _$CartState$ProcessingImpl;
  const CartState$Processing._() : super._();

  @override
  List<CartItem> get cartItems;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CartState$ProcessingImplCopyWith<_$CartState$ProcessingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
