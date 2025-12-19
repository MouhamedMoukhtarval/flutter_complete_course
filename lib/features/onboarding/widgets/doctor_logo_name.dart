import 'package:app_serving_doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorLogoName extends StatelessWidget {
  const DoctorLogoName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/docapp_logo.svg'),
        SizedBox(width: 10.w),
        Text(
          'Doctor',
          style: AppStyles.font24BlackBold,
        ),
      ],
    );
  }
}