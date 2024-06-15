import 'package:dio/dio.dart';

class DioErrorConverter {
  static String fromDioError({
    required DioException dioError,
    Map<String, dynamic>? errorDictionary,
    String? sourceErrorMessage,
  }) {
    String errorMessage = '';

    if (errorDictionary != null) {
      errorMessage = errorDictionary[sourceErrorMessage ?? ''];
    }

    if (errorMessage.isNotEmpty) return errorMessage;

    switch (dioError.type) {
      case DioExceptionType.cancel:
        errorMessage = 'Request to API server was cancelled';
        break;
      case DioExceptionType.connectionTimeout:
        errorMessage = 'Connection timeout with API server';
        break;
      case DioExceptionType.badCertificate:
        errorMessage = 'Invalid certificate';
        break;
      case DioExceptionType.sendTimeout:
        errorMessage = 'Send timeout in connection with API server';
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = 'Receive timeout in connection with API server';
        break;
      case DioExceptionType.badResponse:
        errorMessage =
            handleStatusCode(statusCode: dioError.response!.statusCode!);
        break;
      default:
        errorMessage = 'Oops! Something went wrong';
        break;
    }

    return errorMessage;
  }

  static String handleStatusCode({required int statusCode}) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return 'Not found';
      case 500:
        return 'Internal server error';
      default:
        return 'Oops! Something went wrong';
    }
  }
}
