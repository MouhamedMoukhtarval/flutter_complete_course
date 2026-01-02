import 'package:app_serving_doctors/core/di/dependency_injection.dart';
import 'package:app_serving_doctors/core/routes/routes.dart';
import 'package:app_serving_doctors/features/home/ui/home_screen.dart';
import 'package:app_serving_doctors/features/login/logic/cubit/login_cubit.dart';
import 'package:app_serving_doctors/features/login/ui/login_screen.dart';
import 'package:app_serving_doctors/features/onboarding/onboadring.dart';
import 'package:app_serving_doctors/features/sign_up/logic/sign_up_cubit.dart';
import 'package:app_serving_doctors/features/sign_up/ui/sgin_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  /// Get the route based on the route name
  Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder:(_) => BlocProvider(
            create: (context) => getit<SignUpCubit>(),
            child: const SignupScreen(),
        ));
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('404, Page not found'))),
        );
    }
  }
}
