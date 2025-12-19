import 'package:app_serving_doctors/core/routes/routes.dart';
import 'package:app_serving_doctors/features/login/ui/login_screen.dart';
import 'package:app_serving_doctors/features/onboarding/onboadring.dart';
import 'package:flutter/material.dart';


class AppRouter {
  /// Get the route based on the route name
  Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('404, Page not found'),
            ),
          ),
        );
    }
  }
}