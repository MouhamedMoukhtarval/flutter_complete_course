import 'package:app_serving_doctors/core/helpers/spacing.dart';
import 'package:app_serving_doctors/core/theming/styles.dart';
import 'package:app_serving_doctors/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorListViewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(bottom: 16.h),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.network(
                  width: 110.w,
                  height: 110.h,
                  'https://upload.wikimedia.org/wikipedia/en/4/4b/Abu_Obeida%27s_maskless_face.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              spacingHorizontal(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorsModel?.name ?? 'Doctor',
                      style: AppStyles.font18DarkBlueBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    spacingVertical(8),
                    Text(
                      '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                      style: AppStyles.font12GrayMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                    spacingVertical(8),
                    Text(
                      doctorsModel?.email ?? 'Email',
                      style: AppStyles.font12GrayMedium,
                      overflow: TextOverflow.ellipsis,
                    )
                  ]
                )
              )
            ]
          )
         );
  }
}