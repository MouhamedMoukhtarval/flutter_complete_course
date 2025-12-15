import 'package:app_serving_doctors/core/theming/styles.dart';
import 'package:app_serving_doctors/features/onboarding/widgets/doctor_image_text.dart';
import 'package:app_serving_doctors/features/onboarding/widgets/doctor_logo_name.dart';
import 'package:app_serving_doctors/features/onboarding/widgets/getstarted_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              children: [
                const DoctorLogoName(),
                SizedBox(height: 30.h),
                const DoctorImageText(),
                Padding(
                  padding:  EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Manage your work by the app and make your life easier and help people to get the best care.',
                        style: AppStyles.fontGrayRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30.h),
                      const GetStartedButton(),
                    ],
                  ),
                )
            
              ],
            ),
          ),
        )
        )
    );
  }
}