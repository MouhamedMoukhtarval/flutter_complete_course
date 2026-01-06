import 'package:app_serving_doctors/core/di/dependency_injection.dart';
import 'package:app_serving_doctors/core/helpers/constants_keys.dart';
import 'package:app_serving_doctors/core/helpers/extensions.dart';
import 'package:app_serving_doctors/core/helpers/shared_preference_helper.dart';
import 'package:app_serving_doctors/core/routes/app_router.dart';
import 'package:app_serving_doctors/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await checkIfUserLoggedIn();
  await setupGetIt();
  runApp(DocotrApp(appRouter: AppRouter()));
}

Future<void> checkIfUserLoggedIn() async {
  String? userToken = await SharedPreferenceHelper.getSecureToken(
    SharedPreferenceKeys.userToken,
  );
  if (userToken.isNullOrEmpty()) {
    isLoggedIn = true;
  } else {
    isLoggedIn = false;
  }
}
