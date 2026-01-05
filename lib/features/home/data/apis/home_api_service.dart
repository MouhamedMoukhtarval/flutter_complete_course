import 'package:app_serving_doctors/core/networking/api_constants.dart';
import 'package:app_serving_doctors/features/home/data/apis/home_api_constants.dart';
import 'package:app_serving_doctors/features/home/data/models/specialization_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;
  
  @GET(HomeApiConstants.specializations)
  Future<SpecializationResponseModel> getSpecializations();

  
}