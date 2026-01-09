import 'package:app_serving_doctors/features/home/data/models/specialization_response_model.dart';
import 'package:app_serving_doctors/features/home/logic/home_cubit.dart';
import 'package:app_serving_doctors/features/home/logic/home_state.dart';
import 'package:app_serving_doctors/features/home/ui/widgets/doctors/doctor_list_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorList) => setupSeccess(doctorList),
          doctorsError: () => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupSeccess(List<Doctors?>? doctorList) {
    return DoctorListView(doctorsList: doctorList);
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
