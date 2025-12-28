import 'package:app_serving_doctors/core/helpers/extensions.dart';
import 'package:app_serving_doctors/core/routes/routes.dart';
import 'package:app_serving_doctors/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: AppStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Login',
            style: AppStyles.font13BlueRegular,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}