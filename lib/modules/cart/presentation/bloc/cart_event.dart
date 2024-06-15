part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.addProduct(Product product) = _AddProduct;
  const factory CartEvent.removeProduct(Product product) = _RemoveProduct;
  const factory CartEvent.decrementProduct(Product product) = _DecrementProduct;
  const factory CartEvent.incrementProduct(Product product) = _IncrementProduct;
}