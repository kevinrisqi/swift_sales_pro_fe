import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:swift_sales_pro_fe/core/assets/assets.gen.dart';
import 'package:swift_sales_pro_fe/core/components/custom_text_field.dart';
import 'package:swift_sales_pro_fe/core/components/spaces.dart';
import 'package:swift_sales_pro_fe/core/constants/colors.dart';
import 'package:swift_sales_pro_fe/modules/home/bloc/product_bloc.dart';
import 'package:swift_sales_pro_fe/modules/home/model/product_response_model.dart';
import 'package:swift_sales_pro_fe/modules/home/presentation/widgets/category_widget.dart';
import 'package:swift_sales_pro_fe/modules/home/presentation/widgets/product_card.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final searchTextC = TextEditingController();
  int _selectedIndexCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          CustomTextField(
            controller: searchTextC,
            hint: 'Search',
            prefixIcon: const Icon(
              Icons.search,
              color: AppColors.primary,
              size: 28,
            ),
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.primary,
            ),
            borderColor: Colors.transparent,
            suffixIcon: searchTextC.text.isNotEmpty
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        searchTextC.clear();
                      });
                    },
                    icon: const Icon(
                      Icons.close,
                      color: AppColors.primary,
                    ),
                  )
                : const SizedBox(),
            fillColor: AppColors.primary.withOpacity(0.1),
            // useShadow: true,
            onChanged: (value) {
              setState(() {});
            },
          ),
          const SpaceHeight(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryWidget(
                asset: const $AssetsIconsGen().allCategories.path,
                label: 'Semua',
                isSelected: _selectedIndexCategory == 0,
                ontap: () {
                  _onTapCategory(
                    index: 0,
                    category: CategoryType.all,
                  );
                },
              ),
              CategoryWidget(
                asset: const $AssetsIconsGen().food.path,
                label: 'Food',
                isSelected: _selectedIndexCategory == 1,
                ontap: () {
                  _onTapCategory(index: 1, category: CategoryType.food);
                },
              ),
              CategoryWidget(
                asset: const $AssetsIconsGen().drink.path,
                label: 'Drink',
                isSelected: _selectedIndexCategory == 2,
                ontap: () {
                  _onTapCategory(index: 2, category: CategoryType.drink);
                },
              ),
              CategoryWidget(
                asset: const $AssetsIconsGen().snack.path,
                label: 'Snack',
                isSelected: _selectedIndexCategory == 3,
                ontap: () {
                  _onTapCategory(index: 3, category: CategoryType.snack);
                },
              ),
            ],
          ),
          const SpaceHeight(25),
          Expanded(
            child: BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return state.maybeWhen(
                  initial: () {
                    context
                        .read<ProductBloc>()
                        .add(const ProductEvent.fetchProduct());
                    return const SizedBox();
                  },
                  error: (error) {
                    return Center(
                      child: Text(
                        error,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    );
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  loaded: (List<Product> product) {
                    if (product.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'No data found',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            10.verticalSpace,
                            ElevatedButton(
                              onPressed: () {
                                context
                                    .read<ProductBloc>()
                                    .add(const ProductEvent.fetchProduct());
                              },
                              child: const Text('Refresh'),
                            ),
                          ],
                        ),
                      );
                    }
                    return RefreshIndicator(
                      onRefresh: () => Future.delayed(
                        const Duration(seconds: 1),
                        () => context
                            .read<ProductBloc>()
                            .add(const ProductEvent.fetchProduct()),
                      ),
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 0.6,
                        ),
                        itemCount: product.length,
                        itemBuilder: (context, index) {
                          return ProductCard(product: product[index]);
                        },
                      ),
                    );
                  },
                  orElse: () {
                    return const SizedBox();
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void _onTapCategory({int index = 0, CategoryType? category}) {
    context
        .read<ProductBloc>()
        .add(ProductEvent.filterProduct(category ?? CategoryType.all));
    setState(() {
      _selectedIndexCategory = index;
    });
  }
}

class ProductModel {
  final String name;
  final String image;
  final String category;
  final int price;

  ProductModel({
    required this.name,
    required this.image,
    required this.category,
    required this.price,
  });
}
