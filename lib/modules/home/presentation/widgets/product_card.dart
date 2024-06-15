// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:swift_sales_pro_fe/core/assets/assets.gen.dart';

import 'package:swift_sales_pro_fe/core/components/spaces.dart';
import 'package:swift_sales_pro_fe/core/constants/colors.dart';
import 'package:swift_sales_pro_fe/modules/cart/presentation/bloc/cart_bloc.dart';
import 'package:swift_sales_pro_fe/modules/home/helpers/product_api_const.dart';
import 'package:swift_sales_pro_fe/modules/home/model/product_response_model.dart';
import 'package:swift_sales_pro_fe/services/core_environment_function.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    var productImage =
        '${CoreEnvironmentFunction.getBaseImageUrl()}/${product.image!}';
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
          if (product.image != null)
            Container(
              width: 92,
              height: 92,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(50)),
              child: CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(productImage),
              ),
            ),
          10.verticalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name ?? '-',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                product.category ?? '-',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 14.sp,
                ),
              ),
              const SpaceHeight(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    NumberFormat.currency(
                            locale: 'id_IDR', symbol: 'Rp ', decimalDigits: 0)
                        .format(product.price),
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.read<CartBloc>().add(CartEvent.addProduct(product));
                    },
                    child: Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: const $AssetsIconsGen().orders.svg(
                            color: AppColors.white,
                            width: 20.w,
                            height: 20.w,
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
  }
}
