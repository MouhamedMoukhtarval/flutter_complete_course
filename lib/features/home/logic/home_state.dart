import 'package:app_serving_doctors/core/networking/api_errors_handler.dart';
import 'package:app_serving_doctors/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part  'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  // Specializations
  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(List<SpecializationsData?>? specializationsDataList) = SpecializationSuccess;
  const factory HomeState.specializationError(ErrorHandler errorHandler) = SpecializationError;

  // Doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsResponseModel) = DoctorsSuccess;
  const factory HomeState.doctorsError(ErrorHandler errorHandler) = DoctorsError;

}
