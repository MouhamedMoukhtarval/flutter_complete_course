import 'package:app_serving_doctors/core/networking/api_errors_handler.dart';
import 'package:app_serving_doctors/core/networking/api_result.dart';
import 'package:app_serving_doctors/core/networking/api_services.dart';
import 'package:app_serving_doctors/features/login/data/models/login_request_body.dart';
import 'package:app_serving_doctors/features/login/data/models/login_response.dart';
// TODO: I will implement caching after implementing the class ApiErrorsHandler entirely, remember to add caching logic.
class LoginRepo {
  final ApiServices _apiServices;

  LoginRepo(this._apiServices);

  Future<ApiResult<LoginResponseBody>> login(
      LoginRequestBody loginRequestBody) async {
    try{
      final response = await _apiServices.loginUser(loginRequestBody);
      return ApiResult.success(response);

    }catch(error){
      return ApiResult.failure(ErrorsHandler.handle(error));
    }
  }

}