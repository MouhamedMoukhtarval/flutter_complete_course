import 'package:dio/dio.dart';
import 'api_errors_model.dart';

class ApiErrorsHandler {
  late ApiErrorsModel apiErrorModel;

  static ApiErrorsModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorsModel(message: "Connection to server failed");
        case DioExceptionType.cancel:
          return ApiErrorsModel(message: "Request to server was cancelled");
        case DioExceptionType.connectionTimeout:
          return ApiErrorsModel(message: "Connection to server timed out");
        case DioExceptionType.unknown:
          return ApiErrorsModel(
            message: "Connection to server failed due to internet connection",
          );
        case DioExceptionType.receiveTimeout:
          return ApiErrorsModel(
            message: "Receive timeout in connection with server",
          );
        case DioExceptionType.sendTimeout:
          return ApiErrorsModel(
            message: "Send timeout in connection with server",
          );
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        default:
          return ApiErrorsModel(message: "Something went wrong");
      }
    } else {
      return ApiErrorsModel(message: "Something went wrong");
    }
  }
}

ApiErrorsModel _handleError(dynamic data) {
  return ApiErrorsModel(
    message: data['message'] ?? "Something went wrong",
    code: data['code'],
    errors: data['errors'],
  );
}
