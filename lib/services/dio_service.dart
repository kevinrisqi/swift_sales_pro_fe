import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:swift_sales_pro_fe/core/constants/api_base_url.dart';
import 'package:swift_sales_pro_fe/modules/auth/data/datasource/auth_local_datasource.dart';
import 'package:swift_sales_pro_fe/modules/auth/data/models/auth_response_model.dart';
import 'package:swift_sales_pro_fe/services/core_environment_function.dart';

class DioService {
  DioService._();

  static Dio call({
    Duration connectTimeout = const Duration(seconds: 10),
    String? customBaseURL,
    String? customAuthorizationToken,
    Map<String, dynamic>? customHeader,
  }) {
    String token = '';
    Map<String, dynamic> header = {};

    if (customAuthorizationToken == null || customAuthorizationToken.isEmpty) {

      if (AuthLocalDataSource.token != null) {
        token = AuthLocalDataSource.token ?? '';
      }
    } else {
      token = customAuthorizationToken;
    }

    header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };

    header.addAll(customHeader ?? {});

    var dio = Dio(
      BaseOptions(
        headers: header,
        baseUrl: customBaseURL ?? CoreEnvironmentFunction.getBaseUrl(),
        connectTimeout: connectTimeout,
      ),
    );

    return dio;
  }
}
