import 'package:app_serving_doctors/core/routes/app_router.dart';
import 'package:app_serving_doctors/core/routes/routes.dart' show Routes;
import 'package:app_serving_doctors/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DocotrApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocotrApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext buildContext) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Serving Doctors',
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onBoarding,
        onGenerateRoute: appRouter.getRoute,
      ),
    );
  }
}
