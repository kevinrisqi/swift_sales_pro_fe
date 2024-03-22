import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:swift_sales_pro_fe/core/constants/api_base_url.dart';
import 'package:swift_sales_pro_fe/modules/auth/data/models/auth_response_model.dart';
import 'package:swift_sales_pro_fe/services/dio_service.dart';

class AuthRemoteDataSource {
  static Future<Either<String, AuthResponseModel>> login(
      {required String email, required String password}) async {
    try {
      final response = await DioService.call().post(AppConstant.login, data: {
        'email': email,
        'password': password,
      });

      return right(AuthResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      return left(e.response?.data['message'] ?? e.message);
    } catch (e) {
      return left(e.toString());
    }
  }
}
