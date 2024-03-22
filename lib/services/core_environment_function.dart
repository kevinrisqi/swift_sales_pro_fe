import 'package:swift_sales_pro_fe/services/flavor_service.dart';

class CoreEnvironmentFunction {
  static late Flavor currentFlavor;

  static String getBaseUrl() {
    switch (currentFlavor) {
      case Flavor.development:
        return 'https://e357-103-125-36-80.ngrok-free.app';
      case Flavor.staging:
        return 'https://stag.example.com';
      case Flavor.production:
        return 'https://example.com';
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
}
