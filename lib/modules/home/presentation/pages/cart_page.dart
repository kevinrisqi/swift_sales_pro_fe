// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import 'package:swift_sales_pro_fe/core/assets/assets.gen.dart';
import 'package:swift_sales_pro_fe/core/components/spaces.dart';
import 'package:swift_sales_pro_fe/core/constants/colors.dart';
import 'package:swift_sales_pro_fe/modules/home/presentation/pages/product_page.dart';
import 'package:swift_sales_pro_fe/modules/home/presentation/widgets/payment_method_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<CartModel> cartProduct = [
    CartModel(
      product: ProductModel(
        name: 'Espresso',
        image: const $AssetsImagesGen().f3.path,
        category: 'Minuman',
        price: 20000,
      ),
      quantity: 1,
    ),
    CartModel(
      product: ProductModel(
        name: 'Mocha',
        image: const $AssetsImagesGen().f4.path,
        category: 'Minuman',
        price: 35000,
      ),
      quantity: 2,
    ),
    CartModel(
      product: ProductModel(
        name: 'Caramel Macchiato',
        image: const $AssetsImagesGen().f5.path,
        category: 'Minuman',
        price: 40000,
      ),
      quantity: 1,
    ),
    CartModel(
      product: ProductModel(
        name: 'Caramel Macchiato',
        image: const $AssetsImagesGen().f5.path,
        category: 'Minuman',
        price: 40000,
      ),
      quantity: 1,
    ),
    CartModel(
      product: ProductModel(
        name: 'Caramel Macchiato',
        image: const $AssetsImagesGen().f5.path,
        category: 'Minuman',
        price: 40000,
      ),
      quantity: 1,
    ),
    CartModel(
      product: ProductModel(
        name: 'Caramel Macchiato',
        image: const $AssetsImagesGen().f5.path,
        category: 'Minuman',
        price: 40000,
      ),
      quantity: 1,
    ),
  ];

  int get subTotal => cartProduct.fold(
      0, (previousValue, element) => previousValue + element.total);

  var valueIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      bottomSheet: Container(
        decoration: const BoxDecoration(color: AppColors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 12, 8, 0),
              child: ValueListenableBuilder(
                  valueListenable: valueIndex,
                  builder: (context, index, child) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PaymentMethodWidget(
                          asset: const $AssetsIconsGen().cash.path,
                          label: 'Cash',
                          isActive: index == 0,
                          ontap: () => tapPaymentMethod(0),
                        ),
                        // const SpaceWidth(10),
                        PaymentMethodWidget(
                          asset: const $AssetsIconsGen().qrCode.path,
                          label: 'QRIS',
                          isActive: index == 1,
                          ontap: () => tapPaymentMethod(1),
                        ),
                        // const SpaceWidth(10),
                        PaymentMethodWidget(
                          asset: const $AssetsIconsGen().debit.path,
                          label: 'Debit',
                          isActive: index == 2,
                          ontap: () => tapPaymentMethod(2),
                        ),
                      ],
                    );
                  }),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      NumberFormat.currency(
                              locale: 'id_IDR', symbol: 'Rp ', decimalDigits: 0)
                          .format(subTotal),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Text(
                          'Checkout',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: AppColors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartProduct.length,
              itemBuilder: (context, index) {
                var item = cartProduct[index];
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.primary.withOpacity(.5),
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Container(
                        width: 76,
                        height: 76,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage(item.product.image)),
                        ),
                      ),
                      const SpaceWidth(12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.product.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              item.product.category,
                              style: const TextStyle(
                                color: AppColors.grey,
                              ),
                            ),
                            const SpaceHeight(10),
                            Row(
                              children: [
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id_IDR',
                                          symbol: 'Rp ',
                                          decimalDigits: 0)
                                      .format(item.product.price),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Spacer(),
                                const SpaceWidth(10),
                                Container(
                                  width: 30,
                                  height: 30,
                                  alignment: Alignment.center,
                                  child: IconButton.filled(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      setState(() {
                                        item.quantity--;
                                      });
                                    },
                                    icon: const Icon(Icons.remove),
                                  ),
                                ),
                                const SpaceWidth(10),
                                Text(
                                  item.quantity.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SpaceWidth(10),
                                Container(
                                  width: 30,
                                  height: 30,
                                  alignment: Alignment.center,
                                  child: IconButton.filled(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      setState(() {
                                        item.quantity++;
                                      });
                                    },
                                    icon: const Icon(Icons.add),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void tapPaymentMethod(int index) {
    valueIndex.value = index;
  }
}

class CartModel {
  ProductModel product;
  int quantity;
  int get total => product.price * quantity;

  CartModel({
    required this.product,
    required this.quantity,
  });
}
