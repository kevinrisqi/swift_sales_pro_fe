import 'package:flutter/material.dart';
import 'package:swift_sales_pro_fe/core/constants/colors.dart';

import 'spaces.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final String? title;
  final Function(String value)? onChanged;
  final TextInputType? keyboardType;
  final bool showLabel;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool setPassword;
  final TextStyle? titleStyle;
  final TextStyle? hintStyle;
  final Color? fillColor;
  final Color? borderColor;
  final double? borderRadius;
  final bool useShadow;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.title,
    this.onChanged,
    this.keyboardType,
    this.showLabel = true,
    this.prefixIcon,
    this.suffixIcon,
    this.hintStyle,
    this.titleStyle,
    this.fillColor,
    this.borderColor,
    this.borderRadius,
    this.useShadow = false,
  }) : setPassword = false;

  const CustomTextField.password({
    super.key,
    required this.controller,
    required this.hint,
    this.title,
    this.onChanged,
    this.keyboardType,
    this.showLabel = true,
    this.prefixIcon,
    this.suffixIcon,
    this.hintStyle,
    this.titleStyle,
    this.fillColor,
    this.borderColor,
    this.borderRadius,
    this.useShadow = false,
  }) : setPassword = true;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null && widget.title != '') ...[
          Text(
            widget.title!,
            style: widget.titleStyle ??
                const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SpaceHeight(12.0),
        ],
        Container(
          decoration: widget.useShadow
              ? BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius:
                      BorderRadius.circular(widget.borderRadius ?? 8.0),
                )
              : null,
          child: TextFormField(
            controller: widget.controller,
            onChanged: widget.onChanged,
            obscureText: isObscure && widget.setPassword,
            keyboardType: widget.keyboardType,
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
            decoration: InputDecoration(
              fillColor: widget.fillColor,
              filled: widget.fillColor != null,
              prefixIcon: widget.prefixIcon,
              suffixIcon: (widget.setPassword && isObscure)
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      child: const Icon(Icons.visibility))
                  : (widget.setPassword && !isObscure)
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          child: const Icon(Icons.visibility_off))
                      : widget.suffixIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.0),
                borderSide:
                    BorderSide(color: widget.borderColor ?? Colors.grey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.0),
                borderSide:
                    BorderSide(color: widget.borderColor ?? Colors.grey),
              ),
              hintText: widget.hint,
              hintStyle: widget.hintStyle ??
                  const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
