part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.cartUpdated(List<CartModel> cartItems) = _CartUpdated;
}
