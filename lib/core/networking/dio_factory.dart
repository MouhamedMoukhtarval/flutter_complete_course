import 'package:app_serving_doctors/core/helpers/constants_keys.dart';
import 'package:app_serving_doctors/core/helpers/shared_preference_helper.dart' show SharedPreferenceHelper;
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// Private constructor to prevent instantiation.
  DioFactory._();
  static Dio? dio;

  /// Returns a new [Dio] instance with the specified base URL.
  static Dio getDio() {
    Duration timeout = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout;
      addHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addHeaders() async {
    dio!.options.headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer ${await SharedPreferenceHelper.getSecureToken(SharedPreferenceKeys.userToken)}',
    };
  }
  static void setTokenAfterLogin(String token) {
    dio?.options.headers = {
      'Authorization': 'Bearer $token'
    };
  }


  static void addDioInterceptor() {
    dio!.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
      ),
    );
  }
}
