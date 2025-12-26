import 'package:app_serving_doctors/core/helpers/spacing.dart';
import 'package:app_serving_doctors/core/theming/colors.dart';
import 'package:app_serving_doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasNumber;
  final bool hasMinLength;
  final bool hasSpecialChar;
  const PasswordValidations({
    super.key,
    required this.hasLowercase,
    required this.hasUppercase,
    required this.hasNumber,
    required this.hasMinLength,
    required this.hasSpecialChar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidation('At least one lowercase letter', hasLowercase),
        spacingVertical(2),
        buildValidation('At least one uppercase letter', hasUppercase),
        spacingVertical(2),
        buildValidation('At least one number', hasNumber),
        spacingVertical(2),
        buildValidation('At least 8 characters', hasMinLength),
        spacingVertical(2),
        buildValidation('At least one special character', hasSpecialChar),
      
    ]);
  }
  
  buildValidation(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray,

        ),
        spacingHorizontal(6),
        Text(
          text,
          style: AppStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.lightGreen,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.lighterGray : ColorsManager.darkBlue,

          ),
        )
      ]
    );
  }
}
