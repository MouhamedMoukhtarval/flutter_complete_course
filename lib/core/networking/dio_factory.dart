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
      addDioInterceptor();
      return dio!;
    }else{
      return dio!;
    }
  }
  static void addDioInterceptor(){
    dio!.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        ),
    );

  }

}