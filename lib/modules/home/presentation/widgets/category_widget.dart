// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:swift_sales_pro_fe/core/assets/assets.gen.dart';
import 'package:swift_sales_pro_fe/core/components/spaces.dart';
import 'package:swift_sales_pro_fe/core/constants/colors.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({
    Key? key,
    this.fillColor,
    required this.asset,
    this.assetColor,
    this.assetWidth,
    this.assetHeight,
    required this.label,
    this.labelStyle,
    required this.ontap,
    this.isSelected = false,
  }) : super(key: key);

  final Color? fillColor;
  final String asset;
  final Color? assetColor;
  final double? assetWidth;
  final double? assetHeight;
  final String label;
  final TextStyle? labelStyle;
  final Function() ontap;
  final bool isSelected;

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Container(
        width: MediaQuery.of(context).size.width / 4 - 20,
        height: MediaQuery.of(context).size.width / 4 - 20,
        decoration: BoxDecoration(
          color: widget.isSelected
              ? (widget.fillColor ?? AppColors.primary)
              : Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: widget.isSelected
              ? null
              : [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.asset,
              color: widget.isSelected
                  ? (widget.assetColor ?? Colors.white)
                  : AppColors.primary,
              width: widget.assetWidth ?? 35,
              height: widget.assetHeight ?? 35,
            ),
            const SpaceHeight(10),
            Text(
              widget.label,
              style: widget.labelStyle ??
                  TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color:
                        widget.isSelected ? AppColors.white : AppColors.primary,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
