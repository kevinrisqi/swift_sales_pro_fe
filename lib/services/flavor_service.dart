import 'package:package_info_plus/package_info_plus.dart';

enum Flavor {
  development,
  staging,
  production,
}

class FlavorEnvironmentService {
  static late Flavor currentFlavor;

  static _init(Flavor flavor) {
    currentFlavor = flavor;
  }

  static Future<Flavor> call() async {
    PackageInfo result = await PackageInfo.fromPlatform();
    switch (result.packageName) {
      case 'com.zenai.swift_sales_pro.dev':
        _init(Flavor.development);
        return Flavor.development;
      case 'com.zenai.swift_sales_pro.stag':
        _init(Flavor.staging);
        return Flavor.staging;
      default:
        _init(Flavor.production);
        return Flavor.production;
    }
  }
  
}