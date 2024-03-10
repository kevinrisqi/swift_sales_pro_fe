import 'package:flutter/material.dart';
import 'package:swift_sales_pro_fe/core/components/spaces.dart';

class DialogService {
  static Future<dynamic> showDrawer({
    required BuildContext context,
    required String title,
    String? description,
    required Widget content,
    EdgeInsetsGeometry? padding,
    BorderRadius? borderRadius,
  }) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ??
            const BorderRadius.vertical(
              top: Radius.circular(12.0),
            ),
      ),
      builder: (context) {
        return Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.3,
          ),
          padding: padding ?? const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        description != null
                            ? Text(
                                description,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SpaceHeight(20),
                content,
              ],
            ),
          ),
        );
      },
    );
  }
}
