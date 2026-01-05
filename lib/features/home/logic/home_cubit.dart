import 'package:app_serving_doctors/core/networking/api_result.dart';
import 'package:app_serving_doctors/features/home/data/repos/home_repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';
class HomeCubit extends Cubit<HomeState> {
  final HomeRepos _homeRepos;
  HomeCubit(this._homeRepos) : super(HomeState.initial());

  void getSpecializations() async {
    emit(HomeState.specializationLoading());
    final response = await _homeRepos.getSpecializations();
    response.when(
      success: (specializationResponseModel) {
        emit(HomeState.specializationSuccess(specializationResponseModel));
      },
      failure: (errorHandler){
        emit(HomeState.specializationError(errorHandler));
      }
    );
  }
}
