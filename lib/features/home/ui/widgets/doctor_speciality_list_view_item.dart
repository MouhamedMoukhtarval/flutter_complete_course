import 'package:app_serving_doctors/core/helpers/spacing.dart';
import 'package:app_serving_doctors/core/theming/colors.dart';
import 'package:app_serving_doctors/core/theming/styles.dart';
import 'package:app_serving_doctors/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  final int itemIndex;
  final SpecializationsData? specializationsData;

  const DoctorSpecialityListViewItem({
    super.key,
    required this.itemIndex,
    this.specializationsData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 16.0),
      child: Column(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: ColorsManager.lightBlue,
              child: SvgPicture.asset(
                'assets/svgs/image_general_speciality.svg',
                height: 40.h,
                width: 40.w,
              ),
            ),
            spacingVertical(8),
            Text(
              specializationsData?.name ?? 'Specialization',
              style: AppStyles.font12GrayRegular,
            ),
          ],
        ),
      );
  }
}
