import 'package:package_info_plus/package_info_plus.dart';

enum Flavor {
  development,
  staging,
  production;

  bool get isDevelopment => this == Flavor.development;
  bool get isStaging => this == Flavor.staging;
  bool get isProduction => this == Flavor.production;
}

class FlavorEnvironmentService {
  // static late Flavor currentFlavor;

  // static _init(Flavor flavor) {
  //   currentFlavor = flavor;
  // }

  static Future<T> call<T>({
    T Function(Flavor flavor)? onDevelopment,
    T Function(Flavor flavor)? onStaging,
    T Function(Flavor flavor)? onProduction,
  }) async {
    PackageInfo result = await PackageInfo.fromPlatform();
    switch (result.packageName) {
      case 'com.zenai.swift_sales_pro.dev':
        return onDevelopment!(Flavor.development);
      case 'com.zenai.swift_sales_pro.stag':
        return onStaging!(Flavor.staging);
      default:
        return onProduction!(Flavor.production);
    }
  }

  // static Future<Flavor> call() async {
  //   PackageInfo result = await PackageInfo.fromPlatform();
  //   switch (result.packageName) {
  //     case 'com.zenai.swift_sales_pro.dev':
  //       _init(Flavor.development);
  //       return Flavor.development;
  //     case 'com.zenai.swift_sales_pro.stag':
  //       _init(Flavor.staging);
  //       return Flavor.staging;
  //     default:
  //       _init(Flavor.production);
  //       return Flavor.production;
  //   }
  // }
}
