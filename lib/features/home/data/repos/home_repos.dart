
import 'package:app_serving_doctors/core/networking/api_errors_handler.dart';
import 'package:app_serving_doctors/core/networking/api_result.dart';
import 'package:app_serving_doctors/features/home/data/apis/home_api_service.dart';
import 'package:app_serving_doctors/features/home/data/models/specialization_response_model.dart';

class HomeRepos {
  final HomeApiService _homeApiService;

  HomeRepos(this._homeApiService);

  Future<ApiResult<SpecializationResponseModel>> getSpecializations() async {
    try {
      final response = await _homeApiService.getSpecializations();
      return ApiResult.success(response);
    } on Exception catch (e) {
      return ApiResult.failure(ApiErrorsHandler.handle(e));
    }
  }
}