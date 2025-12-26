import 'package:app_serving_doctors/core/helpers/spacing.dart';
import 'package:app_serving_doctors/core/theming/styles.dart';
import 'package:app_serving_doctors/core/widgets/app_text_button.dart';
import 'package:app_serving_doctors/features/login/data/models/login_request_body.dart';
import 'package:app_serving_doctors/features/login/logic/cubit/login_cubit.dart';
import 'package:app_serving_doctors/features/login/ui/widgets/already_have_account_text.dart';
import 'package:app_serving_doctors/features/login/ui/widgets/email_and_password.dart';
import 'package:app_serving_doctors/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:app_serving_doctors/features/login/ui/widgets/terms_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: AppStyles.font24BlueBold),
                spacingVertical(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: AppStyles.font14LighteGrayRegular,
                ),
                spacingVertical(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    spacingVertical(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forgot Password?",
                        style: AppStyles.font13BlueRegular,
                      ),
                    ),
                    spacingVertical(40),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: AppStyles.font16WhiteMedium,
                      onPressed: () {
                        validateAndLogin(context);
                      },
                    ),
                    spacingVertical(20),
                    const TermsConditionsText(),
                    spacingVertical(40),
                    const AlreadyHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateAndLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoadingStates(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
  }
  }
}
