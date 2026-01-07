import 'package:app_serving_doctors/core/helpers/spacing.dart';
import 'package:app_serving_doctors/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecialityShimerLoading extends StatelessWidget {
  const SpecialityShimerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
          child: Column(
            children: [
              Shimmer.fromColors(
                baseColor: ColorsManager.gray,
                highlightColor: ColorsManager.whiteSmoke,
                child: CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.lightBlue,
                ),
              ),
              spacingVertical(14),
              Shimmer.fromColors(
                baseColor: ColorsManager.gray,
                highlightColor: ColorsManager.whiteSmoke,
                child: Container(
                  width: 50.w,
                  height: 14.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.moreLighterGray,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
