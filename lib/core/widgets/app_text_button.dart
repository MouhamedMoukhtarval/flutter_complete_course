import 'package:app_serving_doctors/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed
    }
    );

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(backgroundColor ?? ColorsManager.mainBlue),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 16.0,
            vertical: verticalPadding?.h ?? 12.0,
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(
            buttonWidth?.w ?? double.maxFinite,
            buttonHeight?.h ?? 52.h,
          ),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle,
      ),
      );
  }
}