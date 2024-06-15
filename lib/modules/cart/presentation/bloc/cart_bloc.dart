import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swift_sales_pro_fe/modules/home/model/product_response_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  int? _selectedIndexNominal;

  List<Product> cartProduct = [];

  CartBloc() : super(const _Initial()) {
    on<_AddProduct>((event, emit) {
      if (cartProduct.contains(event.product)) {
        /// * Add quantity if product already in cart
        final index =
            cartProduct.indexWhere((element) => element == event.product);
        cartProduct[index].quantity = cartProduct[index].quantity! + 1;
      } else {
        cartProduct.add(event.product);
      }
    });

    on<_RemoveProduct>((event, emit) {
      cartProduct.remove(event.product);
    });

    on<_DecrementProduct>((event, emit) {
      final index =
          cartProduct.indexWhere((element) => element == event.product);
      if (cartProduct[index].quantity! > 1) {
        cartProduct[index].quantity = cartProduct[index].quantity! - 1;
      } else {
        cartProduct.remove(event.product);
      }
    });

    on<_IncrementProduct>((event, emit) {
      final index =
          cartProduct.indexWhere((element) => element == event.product);
      cartProduct[index].quantity = cartProduct[index].quantity! + 1;
    });
  }

  int? get selectedIndexNominal => _selectedIndexNominal;

  set selectedIndexNominal(int? value) {
    _selectedIndexNominal = value;
  }
}
