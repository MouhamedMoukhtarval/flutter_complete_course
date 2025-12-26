class ApiConstants {
  static const String baseUrl = 'https://vcare.integration25.com/api/';
  static const String loginEndpoint = 'auth/login';
  static const String registerEndpoint = 'auth/register';
}

class ApiErrors {
  static const String badRequestError = 'Bad_request.';
  static const String forbiddenError = 'Forbidden.';
  static const String noContent = 'No_content.';
  static const String conflictError = 'Conflict.';
  static const String internalServerError ='Internal_server_error.';
  static const String notFoundError = 'Not_found.';
  static const String unauthorizedError = 'Unauthorized_access.';
  static const String unknownError = 'unknownError.';
  static const String timeoutError ='timeoutError.';
  static const String defaultError = 'defaultError.';
  static const String noInternetError = 'noInternetError.';
  static const String cacheError = 'cacheError.';
  static const String loadingMessage = 'loading_message.';
  static const String retryAgainMessage = 'retry_again_message.';
  static const String ok = 'OK.';
}
