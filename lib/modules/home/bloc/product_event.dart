part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = _Started;
  const factory ProductEvent.fetchProduct() = _FetchProduct;
  const factory ProductEvent.filterProduct(CategoryType category) = _FilterProduct;
}