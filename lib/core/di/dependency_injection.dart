import 'package:app_serving_doctors/core/networking/api_services.dart';
import 'package:app_serving_doctors/core/networking/dio_factory.dart';
import 'package:app_serving_doctors/features/login/data/repos/login_repo.dart';
import 'package:app_serving_doctors/features/login/logic/cubit/login_cubit.dart';
import 'package:app_serving_doctors/features/sign_up/data/repos/sign_up_repo.dart' show SignUpRepo;
import 'package:app_serving_doctors/features/sign_up/logic/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiServices>(()=> ApiServices(dio));

  // Login 
  getit.registerLazySingleton<LoginRepo>(()=> LoginRepo(getit()));
  getit.registerFactory<LoginCubit>(() => LoginCubit(getit()));

  // Sign Up
  getit.registerLazySingleton<SignUpRepo>(()=> SignUpRepo(getit()));
  getit.registerFactory<SignUpCubit>(() => SignUpCubit(getit()));

}