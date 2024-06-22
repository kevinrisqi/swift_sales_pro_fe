import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swift_sales_pro_fe/core/assets/assets.gen.dart';
import 'package:swift_sales_pro_fe/core/components/spaces.dart';
import 'package:swift_sales_pro_fe/core/constants/colors.dart';
import 'package:swift_sales_pro_fe/core/extensions/build_context_ext.dart';
import 'package:swift_sales_pro_fe/modules/cart/presentation/bloc/cart_bloc.dart';
import 'package:swift_sales_pro_fe/modules/cart/presentation/pages/cart_page.dart';
import 'package:swift_sales_pro_fe/modules/home/presentation/pages/history_page.dart';
import 'package:swift_sales_pro_fe/modules/home/presentation/pages/order_page.dart';
import 'package:swift_sales_pro_fe/modules/home/presentation/pages/payment_page.dart';
import 'package:swift_sales_pro_fe/modules/home/presentation/pages/product_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  final List _pages = [
    const ProductPage(),
    const PaymentPage(),
    const HistoryPage(),
    const OrderPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Katalog'),
        leading: const SizedBox(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        centerTitle: true,
        forceMaterialTransparency: true,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          width: 65.w,
          height: 65.w,
          child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return CartPage(listCart: context.read<CartBloc>().cartProduct);
                      },
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ));
              },
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
      bottomNavigationBar: _bottomBar(),
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        itemCount: _pages.length,
        itemBuilder: (context, index) {
          return _pages[index];
        },
      ),
    );
  }

  Widget _bottomBar() {
    return Container(
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
                  _pageController.animateToPage(0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
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
                  _pageController.animateToPage(1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
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
                  _pageController.animateToPage(2,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
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
                  _pageController.animateToPage(3,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
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
    );
  }
}
