import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swift_sales_pro_fe/modules/home/data/product_remote_datasource.dart';
import 'package:swift_sales_pro_fe/modules/home/model/product_response_model.dart';
import 'package:swift_sales_pro_fe/modules/home/presentation/widgets/category_widget.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(const _Initial()) {
    List<Product> products = [];

    on<_FetchProduct>((event, emit) async {
      emit(const ProductState.loading());

      final result = await ProductRemoteDataSouce.fetchProduct();

      result.fold(
        (l) {
          emit(ProductState.error(l));
        },
        (r) {
          if (r.data != null) {
            products = r.data!;
            emit(ProductState.loaded(r.data!));
          }
        },
      );
    });

    on<_FilterProduct>((event, emit) {
      String category = '';
      switch (event.category as CategoryType) {
        case CategoryType.drink:
          category = 'drink';
          break;
        case CategoryType.food:
          category = 'food';
          break;
        case CategoryType.snack:
          category = 'snack';
          break;
        default:
          category = 'all';
      }
      final filteredProducts = products.where((element) => element.category == category).toList();

      if (category == 'all'){
        emit(ProductState.loaded(products));
      } else {
        emit(ProductState.loaded(filteredProducts));
      }
      
    });
  }
}
