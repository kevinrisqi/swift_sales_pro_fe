import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:swift_sales_pro_fe/core/assets/assets.gen.dart';
import 'package:swift_sales_pro_fe/core/components/custom_text_field.dart';
import 'package:swift_sales_pro_fe/core/components/spaces.dart';
import 'package:swift_sales_pro_fe/core/constants/colors.dart';
import 'package:swift_sales_pro_fe/modules/home/presentation/widgets/category_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchTextC = TextEditingController();
  int _selectedIndexCategory = 0;
  int _selectedIndex = 0;

  List<Product> product = [
    Product(
      name: 'Vanilla Latte',
      image: const $AssetsImagesGen().f1.path,
      category: 'Minuman',
      price: 25000,
    ),
    Product(
      name: 'Cappuccino',
      image: const $AssetsImagesGen().f2.path,
      category: 'Minuman',
      price: 30000,
    ),
    Product(
      name: 'Espresso',
      image: const $AssetsImagesGen().f3.path,
      category: 'Minuman',
      price: 20000,
    ),
    Product(
      name: 'Mocha',
      image: const $AssetsImagesGen().f4.path,
      category: 'Minuman',
      price: 35000,
    ),
    Product(
      name: 'Caramel Macchiato',
      image: const $AssetsImagesGen().f5.path,
      category: 'Minuman',
      price: 40000,
    ),
    Product(
      name: 'Iced Coffee',
      image: const $AssetsImagesGen().f6.path,
      category: 'Minuman',
      price: 25000,
    ),
    Product(
      name: 'Iced Tea',
      image: const $AssetsImagesGen().f7.path,
      category: 'Minuman',
      price: 15000,
    ),
    Product(
      name: 'Hot Tea',
      image: const $AssetsImagesGen().f8.path,
      category: 'Minuman',
      price: 18000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Katalog'),
        leading: const SizedBox(),
        centerTitle: true,
        forceMaterialTransparency: true,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          width: 65,
          height: 65,
          child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.add,
                color: AppColors.white,
                size: 35,
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 2), // Shadow position, match your design
            ),
          ],
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20), // Adjust this value to your preference
          ),
        ),
        child: BottomAppBar(
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 15,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      const $AssetsIconsGen().home.path,
                      color: _selectedIndex == 0
                          ? AppColors.primary
                          : AppColors.grey.withOpacity(0.5),
                      width: 24,
                      height: 24,
                    ),
                    const SpaceHeight(5),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: _selectedIndex == 0
                            ? AppColors.primary
                            : AppColors.grey.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      const $AssetsIconsGen().payments.path,
                      color: _selectedIndex == 1
                          ? AppColors.primary
                          : AppColors.grey.withOpacity(0.5),
                      width: 24,
                      height: 24,
                    ),
                    const SpaceHeight(5),
                    Text(
                      'Payment',
                      style: TextStyle(
                        color: _selectedIndex == 1
                            ? AppColors.primary
                            : AppColors.grey.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              const SpaceWidth(30),
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      const $AssetsIconsGen().history.path,
                      color: _selectedIndex == 2
                          ? AppColors.primary
                          : AppColors.grey.withOpacity(0.5),
                      width: 24,
                      height: 24,
                    ),
                    const SpaceHeight(5),
                    Text(
                      'History',
                      style: TextStyle(
                        color: _selectedIndex == 2
                            ? AppColors.primary
                            : AppColors.grey.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      const $AssetsIconsGen().orders.path,
                      color: _selectedIndex == 3
                          ? AppColors.primary
                          : AppColors.grey.withOpacity(0.5),
                      width: 24,
                      height: 24,
                    ),
                    const SpaceHeight(5),
                    Text(
                      'Orders',
                      style: TextStyle(
                        color: _selectedIndex == 3
                            ? AppColors.primary
                            : AppColors.grey.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
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
      ),
    );
  }

  void _onTapCategory(int index) {
    setState(() {
      _selectedIndexCategory = index;
    });
  }
}

class Product {
  final String name;
  final String image;
  final String category;
  final int price;

  Product({
    required this.name,
    required this.image,
    required this.category,
    required this.price,
  });
}
