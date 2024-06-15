import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:swift_sales_pro_fe/modules/auth/data/models/auth_response_model.dart';

class AuthLocalDataSource {
  static String? token;

  static Future<AuthResponseModel?> getAuthData() async {
    final pref = await SharedPreferences.getInstance();
    final authData = pref.getString('auth_data');
    if (authData != null) {
      return authResponseModelFromJson(authData);
    }
    return null;
  }

  static Future<void> saveAuthData(AuthResponseModel authResponseModel) async {
    final pref = await SharedPreferences.getInstance();

    token = authResponseModel.data!.accessToken!;

    await pref.setString(
        'auth_data', authResponseModelToJson(authResponseModel));
  }

  static Future<void> removeAuthData() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove('auth_data');
  }

  static Future<bool> isAuth() async {
    final pref = await SharedPreferences.getInstance();
    final authData = pref.getString('auth_data');

    return authData != null;
  }
}
