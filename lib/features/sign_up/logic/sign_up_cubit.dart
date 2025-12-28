import 'package:app_serving_doctors/core/networking/api_result.dart';
import 'package:app_serving_doctors/features/sign_up/data/models/sgin_up_request_body.dart';
import 'package:app_serving_doctors/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:app_serving_doctors/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitSignupStates() async {
    emit(const SignUpState.sginupLoading());
    final response = await _signUpRepo.signUp(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        confirmPassword: passwordConfirmationController.text,
        gender: '0',
      ),
    );
    response.when(
      success: (data) {
        emit(SignUpState.sginupSuccess(data));
      },
      failure: (failure) => emit(
        SignUpState.sginupError(
          errorMessage: failure.apiErrorModel.message ?? '',
        ),
      ),
    );
  }
}
