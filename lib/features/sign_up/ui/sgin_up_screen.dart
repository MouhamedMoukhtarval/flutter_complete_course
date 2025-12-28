import 'package:app_serving_doctors/core/helpers/spacing.dart';
import 'package:app_serving_doctors/core/theming/styles.dart';
import 'package:app_serving_doctors/core/widgets/app_text_button.dart';
import 'package:app_serving_doctors/features/login/ui/widgets/terms_conditions_text.dart';
import 'package:app_serving_doctors/features/sign_up/logic/sign_up_cubit.dart';
import 'package:app_serving_doctors/features/sign_up/ui/widgets/already_have_account.dart';
import 'package:app_serving_doctors/features/sign_up/ui/widgets/sgin_up_bloc_listener.dart';
import 'package:app_serving_doctors/features/sign_up/ui/widgets/sgin_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: AppStyles.font24BlueBold,
                ),
                spacingVertical(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: AppStyles.font14GrayRegular,
                ),
                spacingVertical(36),
                Column(
                  children: [
                    const SignupForm(),
                    spacingVertical(40),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: AppStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    spacingVertical(16),
                    const TermsConditionsText(),
                    spacingVertical(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignupStates();
    }
  }
}