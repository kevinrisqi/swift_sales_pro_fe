import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_sales_pro_fe/core/constants/colors.dart';
import 'package:swift_sales_pro_fe/modules/auth/presentation/pages/login_page.dart';
import 'package:swift_sales_pro_fe/services/flavor_service.dart';
import 'package:swift_sales_pro_fe/services/core_environment_function.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  CoreEnvironmentFunction.currentFlavor = await FlavorEnvironmentService.call();

  //* Force orientation screen always portrait
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
              useMaterial3: true,
              textTheme: GoogleFonts.outfitTextTheme(
                Theme.of(context).textTheme,
              ),
              appBarTheme: AppBarTheme(
                color: AppColors.white,
                elevation: 0,
                titleTextStyle: GoogleFonts.outfit(
                  color: AppColors.primary,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
                iconTheme: const IconThemeData(
                  color: AppColors.primary,
                ),
              ),
            ),
            home: const LoginPage(),
          );
        });
  }
}
