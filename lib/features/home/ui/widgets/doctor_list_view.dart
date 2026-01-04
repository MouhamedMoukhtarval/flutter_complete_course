import 'package:app_serving_doctors/core/helpers/spacing.dart';
import 'package:app_serving_doctors/core/theming/styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) =>
         Container(
          margin: EdgeInsets.only(bottom: 16.h),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.network(
                  width: 110.w,
                  height: 110.h,
                  'http',
                  fit: BoxFit.cover,
                ),
              ),
              spacingHorizontal(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: AppStyles.font18DarkBlueBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    spacingVertical(8),
                    Text(
                      'Degree | 12345678',
                      style: AppStyles.font12GrayMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                    spacingVertical(8),
                    Text(
                      'Email',
                      style: AppStyles.font12GrayMedium,
                      overflow: TextOverflow.ellipsis,
                    )
                  ]
                )
              )
            ]
          )
         )
      ),
    );
  }
}