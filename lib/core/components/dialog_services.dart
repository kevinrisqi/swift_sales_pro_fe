import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:swift_sales_pro_fe/core/assets/assets.gen.dart';
import 'package:swift_sales_pro_fe/core/components/spaces.dart';
import 'package:swift_sales_pro_fe/core/constants/colors.dart';

class DialogService {
  static Future<dynamic> showDrawer({
    required BuildContext context,
    required String title,
    String? description,
    required Widget content,
    EdgeInsetsGeometry? padding,
    BorderRadius? borderRadius,
    bool isDismissible = true,
  }) {
    return showModalBottomSheet(
      context: context,
      isDismissible: isDismissible,
      useSafeArea: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ??
            const BorderRadius.vertical(
              top: Radius.circular(12.0),
            ),
      ),
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.9,
            ),
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(12.0),
              ),
            ),
            padding: padding ?? const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 60,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SpaceHeight(20),
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
          ),
        );
      },
    );
  }

  static Future<dynamic> showComingSoonDrawer({
    required BuildContext context,
  }) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.9,
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              Lottie.asset(
                const $AssetsLottieGen().animComingSoon,
                width: 200,
              ),
              const SpaceHeight(20),
              const Text(
                'Coming Soon',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SpaceHeight(10),
              const Text('Maaf, fitur ini sedang dalam pengembangan'),
              const SpaceHeight(20),
            ],
          ),
        );
      },
    );
  }
}
