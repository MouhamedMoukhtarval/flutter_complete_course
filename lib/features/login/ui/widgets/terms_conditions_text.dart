import 'package:app_serving_doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsConditionsText extends StatelessWidget {
  const TermsConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By continuing, you agree to our ",
            style: AppStyles.font13GrayRegular,
          ),
          TextSpan(
            text: "Terms & Conditions ",
            style: AppStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: "and ",
            style: AppStyles.font13GrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: "Privacy Policy",
            style: AppStyles.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}