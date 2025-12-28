import 'package:app_serving_doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
      children: [
        TextSpan(
          text: "Don't have an account? ",
          style: AppStyles.font13DarkBlueRegular,
        ),
        TextSpan(
          text: "Sign Up",
          style: AppStyles.font13BlueRegular,
        ),
      ],
    ));
  }
}