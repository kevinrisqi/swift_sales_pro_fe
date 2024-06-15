import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:swift_sales_pro_fe/modules/home/helpers/product_api_const.dart';
import 'package:swift_sales_pro_fe/modules/home/model/product_response_model.dart';
import 'package:swift_sales_pro_fe/services/dio_service.dart';
import 'package:swift_sales_pro_fe/utils/dio_error_converter.dart';

class ProductRemoteDataSouce {
 static Future<Either<String, ProductResponseModel>> fetchProduct() async {
    try {
      final response = await DioService.call().get(ProductApiConst.getProduct);
      return Right(ProductResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        return left(DioErrorConverter.fromDioError(dioError: e));
      }

      if (e.response != null) {
        try {
          return right(ProductResponseModel.fromJson(e.response!.data));
        } catch (_) {
          return left(DioErrorConverter.fromDioError(dioError: e));
        }
      } else {
        return left(DioErrorConverter.fromDioError(dioError: e));
      }
    } catch (e) {
      return left(e.toString());
    }
  }
}
