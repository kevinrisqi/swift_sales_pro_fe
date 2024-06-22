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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addProduct,
    required TResult Function(Product product) removeProduct,
    required TResult Function(Product product) decrementProduct,
    required TResult Function(Product product) incrementProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addProduct,
    TResult? Function(Product product)? removeProduct,
    TResult? Function(Product product)? decrementProduct,
    TResult? Function(Product product)? incrementProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addProduct,
    TResult Function(Product product)? removeProduct,
    TResult Function(Product product)? decrementProduct,
    TResult Function(Product product)? incrementProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_DecrementProduct value) decrementProduct,
    required TResult Function(_IncrementProduct value) incrementProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_DecrementProduct value)? decrementProduct,
    TResult? Function(_IncrementProduct value)? incrementProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_DecrementProduct value)? decrementProduct,
    TResult Function(_IncrementProduct value)? incrementProduct,
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
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CartEvent.started()';
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
    required TResult Function(Product product) addProduct,
    required TResult Function(Product product) removeProduct,
    required TResult Function(Product product) decrementProduct,
    required TResult Function(Product product) incrementProduct,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addProduct,
    TResult? Function(Product product)? removeProduct,
    TResult? Function(Product product)? decrementProduct,
    TResult? Function(Product product)? incrementProduct,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addProduct,
    TResult Function(Product product)? removeProduct,
    TResult Function(Product product)? decrementProduct,
    TResult Function(Product product)? incrementProduct,
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
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_DecrementProduct value) decrementProduct,
    required TResult Function(_IncrementProduct value) incrementProduct,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_DecrementProduct value)? decrementProduct,
    TResult? Function(_IncrementProduct value)? incrementProduct,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_DecrementProduct value)? decrementProduct,
    TResult Function(_IncrementProduct value)? incrementProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CartEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddProductImplCopyWith<$Res> {
  factory _$$AddProductImplCopyWith(
          _$AddProductImpl value, $Res Function(_$AddProductImpl) then) =
      __$$AddProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$AddProductImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddProductImpl>
    implements _$$AddProductImplCopyWith<$Res> {
  __$$AddProductImplCopyWithImpl(
      _$AddProductImpl _value, $Res Function(_$AddProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$AddProductImpl implements _AddProduct {
  const _$AddProductImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.addProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductImplCopyWith<_$AddProductImpl> get copyWith =>
      __$$AddProductImplCopyWithImpl<_$AddProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addProduct,
    required TResult Function(Product product) removeProduct,
    required TResult Function(Product product) decrementProduct,
    required TResult Function(Product product) incrementProduct,
  }) {
    return addProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addProduct,
    TResult? Function(Product product)? removeProduct,
    TResult? Function(Product product)? decrementProduct,
    TResult? Function(Product product)? incrementProduct,
  }) {
    return addProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addProduct,
    TResult Function(Product product)? removeProduct,
    TResult Function(Product product)? decrementProduct,
    TResult Function(Product product)? incrementProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_DecrementProduct value) decrementProduct,
    required TResult Function(_IncrementProduct value) incrementProduct,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_DecrementProduct value)? decrementProduct,
    TResult? Function(_IncrementProduct value)? incrementProduct,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_DecrementProduct value)? decrementProduct,
    TResult Function(_IncrementProduct value)? incrementProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class _AddProduct implements CartEvent {
  const factory _AddProduct(final Product product) = _$AddProductImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$AddProductImplCopyWith<_$AddProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProductImplCopyWith<$Res> {
  factory _$$RemoveProductImplCopyWith(
          _$RemoveProductImpl value, $Res Function(_$RemoveProductImpl) then) =
      __$$RemoveProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$RemoveProductImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveProductImpl>
    implements _$$RemoveProductImplCopyWith<$Res> {
  __$$RemoveProductImplCopyWithImpl(
      _$RemoveProductImpl _value, $Res Function(_$RemoveProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemoveProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$RemoveProductImpl implements _RemoveProduct {
  const _$RemoveProductImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.removeProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveProductImplCopyWith<_$RemoveProductImpl> get copyWith =>
      __$$RemoveProductImplCopyWithImpl<_$RemoveProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addProduct,
    required TResult Function(Product product) removeProduct,
    required TResult Function(Product product) decrementProduct,
    required TResult Function(Product product) incrementProduct,
  }) {
    return removeProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addProduct,
    TResult? Function(Product product)? removeProduct,
    TResult? Function(Product product)? decrementProduct,
    TResult? Function(Product product)? incrementProduct,
  }) {
    return removeProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addProduct,
    TResult Function(Product product)? removeProduct,
    TResult Function(Product product)? decrementProduct,
    TResult Function(Product product)? incrementProduct,
    required TResult orElse(),
  }) {
    if (removeProduct != null) {
      return removeProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_DecrementProduct value) decrementProduct,
    required TResult Function(_IncrementProduct value) incrementProduct,
  }) {
    return removeProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_DecrementProduct value)? decrementProduct,
    TResult? Function(_IncrementProduct value)? incrementProduct,
  }) {
    return removeProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_DecrementProduct value)? decrementProduct,
    TResult Function(_IncrementProduct value)? incrementProduct,
    required TResult orElse(),
  }) {
    if (removeProduct != null) {
      return removeProduct(this);
    }
    return orElse();
  }
}

abstract class _RemoveProduct implements CartEvent {
  const factory _RemoveProduct(final Product product) = _$RemoveProductImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$RemoveProductImplCopyWith<_$RemoveProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecrementProductImplCopyWith<$Res> {
  factory _$$DecrementProductImplCopyWith(_$DecrementProductImpl value,
          $Res Function(_$DecrementProductImpl) then) =
      __$$DecrementProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$DecrementProductImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DecrementProductImpl>
    implements _$$DecrementProductImplCopyWith<$Res> {
  __$$DecrementProductImplCopyWithImpl(_$DecrementProductImpl _value,
      $Res Function(_$DecrementProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$DecrementProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$DecrementProductImpl implements _DecrementProduct {
  const _$DecrementProductImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.decrementProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecrementProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecrementProductImplCopyWith<_$DecrementProductImpl> get copyWith =>
      __$$DecrementProductImplCopyWithImpl<_$DecrementProductImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addProduct,
    required TResult Function(Product product) removeProduct,
    required TResult Function(Product product) decrementProduct,
    required TResult Function(Product product) incrementProduct,
  }) {
    return decrementProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addProduct,
    TResult? Function(Product product)? removeProduct,
    TResult? Function(Product product)? decrementProduct,
    TResult? Function(Product product)? incrementProduct,
  }) {
    return decrementProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addProduct,
    TResult Function(Product product)? removeProduct,
    TResult Function(Product product)? decrementProduct,
    TResult Function(Product product)? incrementProduct,
    required TResult orElse(),
  }) {
    if (decrementProduct != null) {
      return decrementProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_DecrementProduct value) decrementProduct,
    required TResult Function(_IncrementProduct value) incrementProduct,
  }) {
    return decrementProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_DecrementProduct value)? decrementProduct,
    TResult? Function(_IncrementProduct value)? incrementProduct,
  }) {
    return decrementProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_DecrementProduct value)? decrementProduct,
    TResult Function(_IncrementProduct value)? incrementProduct,
    required TResult orElse(),
  }) {
    if (decrementProduct != null) {
      return decrementProduct(this);
    }
    return orElse();
  }
}

abstract class _DecrementProduct implements CartEvent {
  const factory _DecrementProduct(final Product product) =
      _$DecrementProductImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$DecrementProductImplCopyWith<_$DecrementProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncrementProductImplCopyWith<$Res> {
  factory _$$IncrementProductImplCopyWith(_$IncrementProductImpl value,
          $Res Function(_$IncrementProductImpl) then) =
      __$$IncrementProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$IncrementProductImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$IncrementProductImpl>
    implements _$$IncrementProductImplCopyWith<$Res> {
  __$$IncrementProductImplCopyWithImpl(_$IncrementProductImpl _value,
      $Res Function(_$IncrementProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$IncrementProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$IncrementProductImpl implements _IncrementProduct {
  const _$IncrementProductImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.incrementProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementProductImplCopyWith<_$IncrementProductImpl> get copyWith =>
      __$$IncrementProductImplCopyWithImpl<_$IncrementProductImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addProduct,
    required TResult Function(Product product) removeProduct,
    required TResult Function(Product product) decrementProduct,
    required TResult Function(Product product) incrementProduct,
  }) {
    return incrementProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addProduct,
    TResult? Function(Product product)? removeProduct,
    TResult? Function(Product product)? decrementProduct,
    TResult? Function(Product product)? incrementProduct,
  }) {
    return incrementProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addProduct,
    TResult Function(Product product)? removeProduct,
    TResult Function(Product product)? decrementProduct,
    TResult Function(Product product)? incrementProduct,
    required TResult orElse(),
  }) {
    if (incrementProduct != null) {
      return incrementProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_RemoveProduct value) removeProduct,
    required TResult Function(_DecrementProduct value) decrementProduct,
    required TResult Function(_IncrementProduct value) incrementProduct,
  }) {
    return incrementProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_RemoveProduct value)? removeProduct,
    TResult? Function(_DecrementProduct value)? decrementProduct,
    TResult? Function(_IncrementProduct value)? incrementProduct,
  }) {
    return incrementProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_RemoveProduct value)? removeProduct,
    TResult Function(_DecrementProduct value)? decrementProduct,
    TResult Function(_IncrementProduct value)? incrementProduct,
    required TResult orElse(),
  }) {
    if (incrementProduct != null) {
      return incrementProduct(this);
    }
    return orElse();
  }
}

abstract class _IncrementProduct implements CartEvent {
  const factory _IncrementProduct(final Product product) =
      _$IncrementProductImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$IncrementProductImplCopyWith<_$IncrementProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartModel> cartItems) cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartModel> cartItems)? cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartModel> cartItems)? cartUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

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
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CartState.initial()';
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
    required TResult Function(List<CartModel> cartItems) cartUpdated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartModel> cartItems)? cartUpdated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartModel> cartItems)? cartUpdated,
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
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CartUpdatedImplCopyWith<$Res> {
  factory _$$CartUpdatedImplCopyWith(
          _$CartUpdatedImpl value, $Res Function(_$CartUpdatedImpl) then) =
      __$$CartUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartModel> cartItems});
}

/// @nodoc
class __$$CartUpdatedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartUpdatedImpl>
    implements _$$CartUpdatedImplCopyWith<$Res> {
  __$$CartUpdatedImplCopyWithImpl(
      _$CartUpdatedImpl _value, $Res Function(_$CartUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$CartUpdatedImpl(
      null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc

class _$CartUpdatedImpl implements _CartUpdated {
  const _$CartUpdatedImpl(final List<CartModel> cartItems)
      : _cartItems = cartItems;

  final List<CartModel> _cartItems;
  @override
  List<CartModel> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartState.cartUpdated(cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartUpdatedImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartUpdatedImplCopyWith<_$CartUpdatedImpl> get copyWith =>
      __$$CartUpdatedImplCopyWithImpl<_$CartUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartModel> cartItems) cartUpdated,
  }) {
    return cartUpdated(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartModel> cartItems)? cartUpdated,
  }) {
    return cartUpdated?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartModel> cartItems)? cartUpdated,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return cartUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) {
    return cartUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated(this);
    }
    return orElse();
  }
}

abstract class _CartUpdated implements CartState {
  const factory _CartUpdated(final List<CartModel> cartItems) =
      _$CartUpdatedImpl;

  List<CartModel> get cartItems;
  @JsonKey(ignore: true)
  _$$CartUpdatedImplCopyWith<_$CartUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
