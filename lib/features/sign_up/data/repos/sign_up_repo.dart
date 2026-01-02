import 'package:app_serving_doctors/core/networking/api_errors_handler.dart';
import 'package:app_serving_doctors/core/networking/api_result.dart';
import 'package:app_serving_doctors/core/networking/api_services.dart';
import 'package:app_serving_doctors/features/sign_up/data/models/sgin_up_request_body.dart';
import 'package:app_serving_doctors/features/sign_up/data/models/sign_up_response.dart';

class SignUpRepo {
  final ApiServices _apiServices;

  SignUpRepo(this._apiServices);

  Future<ApiResult<SignUpResponseBody>> signUp(SignUpRequestBody signUpRequestBody) async {
    try{
      final response = await _apiServices.signUpUser(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

}