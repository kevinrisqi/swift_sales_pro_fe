import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:swift_sales_pro_fe/core/assets/assets.gen.dart';
import 'package:swift_sales_pro_fe/core/components/custom_text_field.dart';
import 'package:swift_sales_pro_fe/core/components/spaces.dart';
import 'package:swift_sales_pro_fe/core/constants/colors.dart';
import 'package:swift_sales_pro_fe/modules/home/presentation/widgets/category_widget.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final searchTextC = TextEditingController();
  int _selectedIndexCategory = 0;

  List<ProductModel> product = [
    ProductModel(
      name: 'Vanilla Latte',
      image: const $AssetsImagesGen().f1.path,
      category: 'Minuman',
      price: 25000,
    ),
    ProductModel(
      name: 'Cappuccino',
      image: const $AssetsImagesGen().f2.path,
      category: 'Minuman',
      price: 30000,
    ),
    ProductModel(
      name: 'Espresso',
      image: const $AssetsImagesGen().f3.path,
      category: 'Minuman',
      price: 20000,
    ),
    ProductModel(
      name: 'Mocha',
      image: const $AssetsImagesGen().f4.path,
      category: 'Minuman',
      price: 35000,
    ),
    ProductModel(
      name: 'Caramel Macchiato',
      image: const $AssetsImagesGen().f5.path,
      category: 'Minuman',
      price: 40000,
    ),
    ProductModel(
      name: 'Iced Coffee',
      image: const $AssetsImagesGen().f6.path,
      category: 'Minuman',
      price: 25000,
    ),
    ProductModel(
      name: 'Iced Tea',
      image: const $AssetsImagesGen().f7.path,
      category: 'Minuman',
      price: 15000,
    ),
    ProductModel(
      name: 'Hot Tea',
      image: const $AssetsImagesGen().f8.path,
      category: 'Minuman',
      price: 18000,
    ),
  ];

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
                  _onTapCategory(0);
                },
              ),
              CategoryWidget(
                asset: const $AssetsIconsGen().food.path,
                label: 'Food',
                isSelected: _selectedIndexCategory == 1,
                ontap: () {
                  _onTapCategory(1);
                },
              ),
              CategoryWidget(
                asset: const $AssetsIconsGen().drink.path,
                label: 'Drink',
                isSelected: _selectedIndexCategory == 2,
                ontap: () {
                  _onTapCategory(2);
                },
              ),
              CategoryWidget(
                asset: const $AssetsIconsGen().snack.path,
                label: 'Snack',
                isSelected: _selectedIndexCategory == 3,
                ontap: () {
                  _onTapCategory(3);
                },
              ),
            ],
          ),
          const SpaceHeight(25),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.7,
              ),
              itemCount: product.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColors.grey.withOpacity(0.3),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 92,
                        height: 92,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(50)),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(product[index].image),
                        ),
                      ),
                      const SpaceHeight(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product[index].name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            product[index].category,
                            style: const TextStyle(
                              color: AppColors.grey,
                            ),
                          ),
                          const SpaceHeight(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                NumberFormat.currency(
                                        locale: 'id_IDR',
                                        symbol: 'Rp ',
                                        decimalDigits: 0)
                                    .format(product[index].price),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const $AssetsIconsGen().orders.svg(
                                        color: AppColors.white,
                                        width: 20,
                                        height: 20,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void _onTapCategory(int index) {
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
