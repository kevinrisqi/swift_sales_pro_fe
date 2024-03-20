import 'package:swift_sales_pro_fe/services/flavor_service.dart';

class CoreEnvironmentFunction {
  static late Flavor currentFlavor;

  static String getBaseUrl() {
    switch (currentFlavor) {
      case Flavor.development:
        return 'http://127.0.0.1:8000';
      case Flavor.staging:
        return 'https://stag.example.com';
      case Flavor.production:
        return 'https://example.com';
    }
  }
}
