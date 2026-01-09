import 'package:app_serving_doctors/core/networking/api_errors_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.freezed.dart';
@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.sginupLoading() = SignupLoading;
  const factory SignUpState.sginupSuccess(T data) = SignupSuccess<T>;
  const factory SignUpState.sginupError(ApiErrorsModel apiErrorsModel) = SginupError;
}