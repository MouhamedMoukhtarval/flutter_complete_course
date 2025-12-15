import 'package:app_serving_doctors/core/extensions/extensions.dart';
import 'package:app_serving_doctors/core/routes/routes.dart';
import 'package:app_serving_doctors/core/theming/colors.dart';
import 'package:app_serving_doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.login);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.pressed)) {
            return ColorsManager.gray;
          } else {
            return ColorsManager.mainBlue;
          }
        }),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 52)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      child: Text('Get Started', style: AppStyles.fontWhiteSemiBold),
    );
  }
}
