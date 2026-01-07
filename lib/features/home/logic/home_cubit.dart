import 'package:app_serving_doctors/core/helpers/extensions.dart';
import 'package:app_serving_doctors/core/networking/api_errors_handler.dart';
import 'package:app_serving_doctors/core/networking/api_result.dart';
import 'package:app_serving_doctors/features/home/data/models/specialization_response_model.dart';
import 'package:app_serving_doctors/features/home/data/repos/home_repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';
class HomeCubit extends Cubit<HomeState> {
  final HomeRepos _homeRepos;
  HomeCubit(this._homeRepos) : super(HomeState.initial());
  List<SpecializationsData?>? specializationsList = [];

  void getSpecializations() async {
    emit(HomeState.specializationLoading());
    final response = await _homeRepos.getSpecializations();
    response.when(
      success: (specializationResponseModel) {
        specializationsList = specializationResponseModel.specializationsDataList ?? [];
        // Getting the doctors list for the first specialization by default
        getDoctorsList(specializationId: specializationsList?.first?.id);
        emit(HomeState.specializationSuccess(specializationsList));
      },
      failure: (errorHandler){
        emit(HomeState.specializationError(errorHandler));
      }
    );
  }
  void getDoctorsList({required int? specializationId}){
    List<Doctors?>? specializationDoctorsList = filterDoctorsBySpecializationId(specializationId);
    if(specializationDoctorsList.isNullOrEmpty()){
      emit(HomeState.doctorsSuccess(specializationDoctorsList));
    } else{
      emit(HomeState.doctorsError(ErrorHandler.handle('No Doctors Found')));
    }

  }
  List<Doctors?>? filterDoctorsBySpecializationId(int? specializationId){
    return specializationsList?.firstWhere(
      (specialization)=> specialization?.id == specializationId
    )?.doctorsList;
  }
}
