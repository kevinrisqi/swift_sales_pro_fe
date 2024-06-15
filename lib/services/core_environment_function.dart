import 'package:swift_sales_pro_fe/services/flavor_service.dart';

class CoreEnvironmentFunction {
  static late Flavor currentFlavor;

  static String getBaseUrl() {
    switch (currentFlavor) {
      case Flavor.development:
        return 'https://b08a-104-28-247-133.ngrok-free.app';
      case Flavor.staging:
        return 'https://zenai.swift-sales-pro.my.id';
      case Flavor.production:
        return 'https://zenai.swift-sales-pro.my.id';
    }
  }

  static String getFlavorString() {
    switch (currentFlavor) {
      case Flavor.development:
        return 'Dev';
      case Flavor.staging:
        return 'Stag';
      case Flavor.production:
        return 'Prod';
    }
  }

  static String getBaseImageUrl() {
    switch (currentFlavor) {
      case Flavor.development:
        return 'https://zenai.swift-sales-pro.my.id/storage/products';
      case Flavor.staging:
        return 'https://zenai.swift-sales-pro.my.id/storage/products';
      default:
        return 'https://zenai.swift-sales-pro.my.id/storage/products';
    }
  }
}
