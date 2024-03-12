// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swift_sales_pro_fe/core/components/spaces.dart';
import 'package:swift_sales_pro_fe/core/constants/colors.dart';

class PaymentMethodWidget extends StatelessWidget {
  const PaymentMethodWidget({
    Key? key,
    required this.asset,
    required this.label,
    required this.ontap,
    this.isActive = false,
  }) : super(key: key);

  final String asset;
  final String label;
  final bool isActive;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width / 3 - 30,
        height: MediaQuery.of(context).size.width / 3 - 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isActive ? AppColors.primary : AppColors.white,
          boxShadow: !isActive ? [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ] : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              asset,
              color: isActive ? AppColors.white : AppColors.primary,
              width: 30,
              height: 30,
            ),
            const SpaceHeight(10),
            Text(
              label,
              style: TextStyle(
                color: isActive ? AppColors.white : AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
