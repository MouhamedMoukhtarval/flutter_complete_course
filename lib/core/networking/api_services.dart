import 'package:app_serving_doctors/core/networking/api_constants.dart';
import 'package:app_serving_doctors/features/login/data/models/login_request_body.dart';
import 'package:app_serving_doctors/features/login/data/models/login_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices{
  factory ApiServices(Dio dio,{String baseUrl}) = _ApiServices;
  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponseBody> loginUser(
    @Body() LoginRequestBody loginRequestBody
  );
}