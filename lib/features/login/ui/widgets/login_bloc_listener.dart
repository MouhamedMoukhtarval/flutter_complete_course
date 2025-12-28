import 'package:app_serving_doctors/core/helpers/extensions.dart';
import 'package:app_serving_doctors/core/routes/routes.dart';
import 'package:app_serving_doctors/core/theming/colors.dart';
import 'package:app_serving_doctors/core/theming/styles.dart';
import 'package:app_serving_doctors/features/login/logic/cubit/login_cubit.dart';
import 'package:app_serving_doctors/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Success || current is Error || current is Loading,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: ColorsManager.mainBlue),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (errorMessage) {
            setupErrorState(context, errorMessage);
          },
        );
      },
    );
  }

  void setupErrorState(BuildContext context, String errorMessage) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.error, color: ColorsManager.red, size: 32),
        content: Text(errorMessage, style: AppStyles.font15DarkBlueMedium),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text('OK', style: AppStyles.font14BlueSemiBold),
          ),
        ],
      ),
    );
  }
}
