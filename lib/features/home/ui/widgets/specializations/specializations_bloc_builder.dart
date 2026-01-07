import 'package:app_serving_doctors/core/helpers/spacing.dart';
import 'package:app_serving_doctors/features/home/data/models/specialization_response_model.dart';
import 'package:app_serving_doctors/features/home/logic/home_cubit.dart';
import 'package:app_serving_doctors/features/home/logic/home_state.dart';
import 'package:app_serving_doctors/features/home/ui/widgets/doctors/doctor_list_view.dart';
import 'package:app_serving_doctors/features/home/ui/widgets/doctors/doctor_shimmer_loding.dart';
import 'package:app_serving_doctors/features/home/ui/widgets/doctors/doctor_speciality_list_view.dart';
import 'package:app_serving_doctors/features/home/ui/widgets/specializations/speciality_shimer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

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
          specializationSuccess: (specializationsDataList) {
            var specializationsList = specializationsDataList;
            return Expanded(
              child: Column(
                children: [
                  SpecialityListView(
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

  Widget setupLoading() => Expanded(
    child: Column(
      children: [
        SpecialityShimerLoading(),
        spacingVertical(8),
        DoctorShimmerLoding(),
      ],
    ),
  );

  Widget setupSeccess(List<SpecializationsData?>? specializationsList) {
    return SpecialityListView(specializationsList: specializationsList ?? []);
  }
}
