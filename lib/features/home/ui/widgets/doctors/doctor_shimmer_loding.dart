import 'package:app_serving_doctors/core/helpers/spacing.dart';
import 'package:app_serving_doctors/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorShimmerLoding extends StatelessWidget {
  const DoctorShimmerLoding({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(bottom: 16.h),
          child: Row(
            children: [
              Shimmer.fromColors(
                baseColor: ColorsManager.gray,
                highlightColor: ColorsManager.whiteSmoke,
                child: Container(
                  width: 110.h,
                  height: 120.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.r),
                    color: ColorsManager.moreLighterGray,
                  ),
                ),
              ),
              spacingHorizontal(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                      baseColor: ColorsManager.gray,
                      highlightColor: ColorsManager.whiteSmoke,
                      child: Container(
                        width: 180.w,
                        height: 18.h,
                        decoration: BoxDecoration(
                          color: ColorsManager.moreLighterGray,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                    ),
                    spacingVertical(12),
                    Shimmer.fromColors(
                      baseColor: ColorsManager.gray,
                      highlightColor: ColorsManager.whiteSmoke,
                      child: Container(
                        width: 160.w,
                        height: 14.h,
                        decoration: BoxDecoration(
                          color: ColorsManager.moreLighterGray,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                    ),
                    spacingVertical(12),
                    Shimmer.fromColors(
                      baseColor: ColorsManager.gray,
                      highlightColor: ColorsManager.whiteSmoke,
                      child: Container(
                        width: 180.w,
                        height: 18.h,
                        decoration: BoxDecoration(
                          color: ColorsManager.moreLighterGray,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                    ),                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
