// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import 'package:swift_sales_pro_fe/core/assets/assets.gen.dart';
import 'package:swift_sales_pro_fe/core/components/buttons.dart';
import 'package:swift_sales_pro_fe/core/components/custom_text_field.dart';
import 'package:swift_sales_pro_fe/core/components/dialog_services.dart';
import 'package:swift_sales_pro_fe/core/components/spaces.dart';
import 'package:swift_sales_pro_fe/core/constants/colors.dart';
import 'package:swift_sales_pro_fe/core/extensions/build_context_ext.dart';
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

  var paymentNominal = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        forceMaterialTransparency: true,
      ),
      bottomSheet: Container(
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
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
            GestureDetector(
              onTap: () {
                _onCheckout(valueIndex.value);
              },
              child: Container(
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
                                locale: 'id_IDR',
                                symbol: 'Rp ',
                                decimalDigits: 0)
                            .format(subTotal),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    const Row(
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
                          size: 30,
                        )
                      ],
                    ),
                  ],
                ),
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
                    borderRadius: BorderRadius.circular(12),
                  ),
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
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              item.product.category,
                              style: TextStyle(
                                  color: AppColors.grey, fontSize: 14.sp),
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
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Spacer(),
                                const SpaceWidth(10),
                                Container(
                                  width: 30.w,
                                  height: 30.w,
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
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SpaceWidth(10),
                                Container(
                                  width: 30.w,
                                  height: 30.w,
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

  void _onCheckout(int index) {
    if (index == 0) {
      log('Cash');
      DialogService.showDrawer(
        context: context,
        title: 'Pembayaran - Tunai',
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              controller: paymentNominal,
              hint: 'Ex: Rp. 100000',
              title: 'Nominal Bayar',
            ),
            const SpaceHeight(20),
            Text(
              'Pilih Nominal :',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SpaceHeight(10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _nominalButton('Uang Pas'),
                _nominalButton('Rp 10.000'),
                _nominalButton('Rp 20.000'),
                _nominalButton('Rp 50.000'),
                _nominalButton('Rp 100.000'),
              ],
            ),
            const SpaceHeight(20),
            MainButton.filled(
              onPressed: () {
                context.pop();
              },
              label: 'Bayar',
            ),
          ],
        ),
      );
    }

    if (index == 1) {
      log('QRIS');
      DialogService.showDrawer(
        context: context,
        title: '',
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              const $AssetsIconsGen().done.path,
              width: 80.w,
              height: 80.w,
            ),
            const SpaceHeight(20),
            Text(
              'Pembayaran telah\nsukses dilakukan',
              style: TextStyle(fontSize: 18.sp),
              textAlign: TextAlign.center,
            ),
            const SpaceHeight(40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _itemDetail('Metode Bayar', 'QRIS'),
                const SpaceHeight(20),
                _itemDetail('Total Tagihan', 'Rp 100.000'),
                const SpaceHeight(20),
                _itemDetail('Nominal Bayar', 'Rp 100.000'),
                const SpaceHeight(20),
                _itemDetail('Waktu Pembayaran', '${DateTime.now()}',
                    isLast: true),
              ],
            ),
            const SpaceHeight(40),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child:
                          MainButton.filled(onPressed: () {}, label: 'Simpan')),
                  const SpaceWidth(10),
                  Expanded(
                    child: MainButton.outlined(
                      onPressed: () {},
                      label: 'Print',
                      icon:
                          SvgPicture.asset(const $AssetsIconsGen().print.path),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    if (index == 2) {
      log('Debit');
      DialogService.showComingSoonDrawer(context: context);
    }
  }

  Widget _nominalButton(String nominal) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          nominal,
          style:  TextStyle(
            color: AppColors.primary,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _itemDetail(String title, String subtitle, {bool isLast = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:  TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
        ),
        const SpaceHeight(10),
        Text(
          subtitle,
          style:  TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        if (!isLast) const Divider(),
      ],
    );
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
