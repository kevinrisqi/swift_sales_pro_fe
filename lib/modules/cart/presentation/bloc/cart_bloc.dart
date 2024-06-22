import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swift_sales_pro_fe/modules/cart/presentation/pages/cart_page.dart';
import 'package:swift_sales_pro_fe/modules/home/model/product_response_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  int? _selectedIndexNominal;

  List<CartModel> cartProduct = [];

  CartBloc() : super(const _Initial()) {
    on<_AddProduct>((event, emit) {
      final index = cartProduct
          .indexWhere((element) => element.product.id == event.product.id);
      if (index != -1) {
        // Add quantity if product already in cart
        cartProduct[index].quantity += 1;
      } else {
        // Add new product to cart
        cartProduct.add(CartModel(product: event.product, quantity: 1));
      }
      log('Add Product: ${event.product.id}, Cart: ${cartProduct.map((e) => e.product.id).toList()}');
      // emit(_CartUpdated(cartProduct));
    });

    on<_RemoveProduct>((event, emit) {
      final index = cartProduct
          .indexWhere((element) => element.product.id == event.product.id);
      if (index != -1) {
        cartProduct.removeAt(index);
      }
      log('Remove Product: ${event.product.id}, Cart: ${cartProduct.map((e) => e.product.id).toList()}');
      // emit(_CartUpdated(cartProduct));
    });

    on<_DecrementProduct>((event, emit) {
      final index = cartProduct
          .indexWhere((element) => element.product.id == event.product.id);
      if (index != -1) {
        if (cartProduct[index].quantity > 1) {
          cartProduct[index].quantity -= 1;
        } else {
          cartProduct.removeAt(index);
        }
      }
      log('Decrement Product: ${event.product.id}, Cart: ${cartProduct.map((e) => e.product.id).toList()}');
      // emit(_CartUpdated(cartProduct));
    });

    on<_IncrementProduct>((event, emit) {
      final index = cartProduct
          .indexWhere((element) => element.product.id == event.product.id);
      log('Increment Index: $index');
      if (index != -1) {
        cartProduct[index].quantity += 1;
      }
      log('Increment Product: ${event.product.id}, Cart: ${cartProduct.map((e) => e.product.id).toList()}');
      // emit(_CartUpdated(cartProduct));
    });
  }

  int? get selectedIndexNominal => _selectedIndexNominal;

  set selectedIndexNominal(int? value) {
    _selectedIndexNominal = value;
  }
}
