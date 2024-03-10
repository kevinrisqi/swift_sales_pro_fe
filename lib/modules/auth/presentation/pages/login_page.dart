import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swift_sales_pro_fe/core/components/buttons.dart';
import 'package:swift_sales_pro_fe/core/components/custom_text_field.dart';
import 'package:swift_sales_pro_fe/core/components/dialog_services.dart';
import 'package:swift_sales_pro_fe/core/components/spaces.dart';
import 'package:swift_sales_pro_fe/core/constants/colors.dart';
import 'package:swift_sales_pro_fe/core/extensions/build_context_ext.dart';
import 'package:swift_sales_pro_fe/modules/home/presentation/pages/home_page.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Stack(
              children: [
                Positioned(
                  top: -220,
                  left: -60,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width + 120,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: CircleAvatar(
                      backgroundColor: AppColors.primary.withOpacity(0.3),
                    ),
                  ),
                ),
                const Positioned(
                  top: 50,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        'To keep connected with us please login\nwith your personal info',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -240,
                  right: -330,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width + 120,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: CircleAvatar(
                      backgroundColor: AppColors.primary.withOpacity(0.3),
                    ),
                  ),
                ),
                Positioned(
                  top: 240,
                  left: 20,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: 'Swift Sales ',
                        children: [
                          TextSpan(
                            text: 'Pro',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CustomTextField(
                  controller: TextEditingController(),
                  title: 'Email',
                  hint: 'Input Your Email',
                ),
                const SpaceHeight(16),
                CustomTextField.password(
                  controller: TextEditingController(),
                  title: 'Password',
                  hint: 'Input Your Password',
                ),
                const SpaceHeight(30),
                MainButton.filled(
                    onPressed: () {
                      context.push(const HomePage());
                    },
                    label: 'Login'),
                const SpaceHeight(30),
                RichText(
                  text: TextSpan(
                    text:
                        'If you have problem with your account, please contact our support.',
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: 'Contact Support',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            _contactUs(context);
                          },
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _contactUs(BuildContext context) async {
    DialogService.showDrawer(
      context: context,
      title: 'Contact Support',
      content: Column(
        children: [
          InkWell(
            onTap: () async {
              if (!await launchUrl(Uri.parse('https://wa.me/6287777063035'))) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: AppColors.red,
                    content: Text(
                      'Could not launch https://wa.me/6287777063035',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
                throw 'Could not launch ${'https://wa.me/6287777063035'}';
              }
            },
            child: const ListTile(
              leading: Icon(
                FontAwesomeIcons.whatsappSquare,
                color: Colors.green,
              ),
              title: Text('WhatsApp'),
              subtitle: Text('+6287777063035'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () async {
              if (!await launchUrl(
                  Uri.parse('mailto:kevinrisqi22@gmail.com'))) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: AppColors.red,
                    content: Text(
                      'Could not launch mailto:kevinrisqi22@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }
            },
            child: const ListTile(
              leading: Icon(
                FontAwesomeIcons.envelope,
                color: Colors.red,
              ),
              title: Text('Email'),
              subtitle: Text('kevinrisqi22@gmail.com'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
    );
  }
}
