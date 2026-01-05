import 'package:app_serving_doctors/core/helpers/spacing.dart';
import 'package:app_serving_doctors/core/theming/colors.dart';
import 'package:app_serving_doctors/features/home/logic/home_cubit.dart';
import 'package:app_serving_doctors/features/home/logic/home_state.dart';
import 'package:app_serving_doctors/features/home/ui/widgets/doctor_list_view.dart';
import 'package:app_serving_doctors/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => setupLoading(),
          specializationSuccess: (specializationResponseModel) {
            var specializationsList =
                specializationResponseModel.specializationsDataList;
            return Expanded(
              child: Column(
                children: [
                  DoctorSpecialityListView(
                    specializationsList: specializationsList ?? [],
                  ),
                  spacingVertical(8),
                  DoctorListView(
                    doctorsList: specializationsList?.first?.doctorsList,
                  ),
                ],
              ),
            );
          },
          specializationError: (errorHandler) {
            return const SizedBox.shrink();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return SizedBox(
      height: 100.h,
      child: Center(
        child: CircularProgressIndicator(color: ColorsManager.mainBlue),
      ),
    );
  }

  Widget setupSeccess(specializationsList) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialityListView(
            specializationsList: specializationsList ?? [],
          ),
          spacingVertical(8),
          DoctorListView(doctorsList: specializationsList?.first?.doctorsList),
        ],
      ),
    );
  }
}
