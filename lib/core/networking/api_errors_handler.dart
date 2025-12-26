import 'package:app_serving_doctors/core/networking/api_error_model.dart';
import 'package:dio/dio.dart';

enum DataSource {
  badRequest,
  cacheError,
  cancel,
  connectTimeout,
  forbidden,
  internalServerError,
  noContent,
  noInterntetConnection,
  notFound,
  receiveTimeout,
  success,
  sendTimeout,
  unauthorized,
  unknownError,
  // ignore: constant_identifier_names
  DEFAULT,
}
class ResponseCode {
  static const int success = 200; // OK
  static const int noContent = 201; // No Content
  static const int badRequest = 400; // Bad Request
  static const int unauthorized = 401; // Unauthorized
  static const int forbidden = 403; // Forbidden
  static const int notFound = 404; // Not Found
  static const int internalServerError = 500; // Internal Server Error
  static const int connectTimeout = -1;
  static const int cancel = -2;
  static const int receiveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cacheError = -5;
  static const int noInterntetConnection = -6;
  static const int DEFAULT = -7;
}
class ErrorsHandler implements Exception {
  late ApiErrorModel apiErrorModel;
  ErrorsHandler.handle(dynamic error){
    if (error is DioException) {
      apiErrorModel = _handleError(error);
    } else {
      apiErrorModel = DataSource.DEFAULT.getFailure();
    }
  }

}
ApiErrorModel _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.cancel:
      return ApiErrorModel(
          message: "Request to API server was cancelled", code: ResponseCode.cancel);
    case DioExceptionType.connectionTimeout:
      return ApiErrorModel(
          message: "Connection timeout with API server", code: ResponseCode.connectTimeout);
    case DioExceptionType.receiveTimeout:
      return ApiErrorModel(
          message: "Receive timeout in connection with API server",
          code: ResponseCode.receiveTimeout);
    case DioExceptionType.sendTimeout:
      return ApiErrorModel(
          message: "Send timeout in connection with API server",
          code: ResponseCode.sendTimeout);
    case DioExceptionType.badResponse:
      {
        switch (error.response?.statusCode) {
          case ResponseCode.unauthorized:
            return ApiErrorModel(
                message: "Unauthorized request", code: ResponseCode.unauthorized);
          case ResponseCode.forbidden:
            return ApiErrorModel(
                message: "Forbidden request", code: ResponseCode.forbidden);
          case ResponseCode.notFound:
            return ApiErrorModel(
                message: "Not found", code: ResponseCode.notFound);
          case ResponseCode.internalServerError:
            return ApiErrorModel(
                message: "Internal server error",
                code: ResponseCode.internalServerError);
          default:
            {
              return ApiErrorModel(
                  message: "Something went wrong",
                  code: error.response?.statusCode);
            }
        }
      }
    default:
      {
        return ApiErrorModel(
            message: "Something went wrong", code: ResponseCode.DEFAULT);
      }
  }
}