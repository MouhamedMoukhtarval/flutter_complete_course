import 'package:app_serving_doctors/core/helpers/constants_keys.dart';
import 'package:app_serving_doctors/core/helpers/shared_preference_helper.dart';
import 'package:app_serving_doctors/core/networking/api_result.dart';
import 'package:app_serving_doctors/core/networking/dio_factory.dart';
import 'package:app_serving_doctors/features/login/data/models/login_request_body.dart';
import 'package:app_serving_doctors/features/login/data/repos/login_repo.dart';
import 'package:app_serving_doctors/features/login/logic/cubit/login_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoadingStates() async {
    emit(const LoginState.loginLoading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        await saveUserToken(loginResponse.userData?.token ?? '');
        emit(LoginState.loginSuccess(loginResponse));
      },
      failure: (apiErrorsModel) {
        emit(LoginState.loginError(apiErrorsModel));
      },
    );
  }
  Future<void> saveUserToken(String token) async {
    await SharedPreferenceHelper.setSecureToken(SharedPreferenceKeys.userToken, token);
    DioFactory.setTokenAfterLogin(token);
  }
}
