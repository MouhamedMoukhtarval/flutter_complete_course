import 'package:app_serving_doctors/features/home/data/models/specialization_response_model.dart';
import 'package:app_serving_doctors/features/home/ui/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationsData?> specializationsList;
  const DoctorSpecialityListView({
    super.key,
    required this.specializationsList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationsList.length,
        itemBuilder: (context, index) {
          return DoctorSpecialityListViewItem(
            itemIndex: index,
            specializationsData: specializationsList[index],
          );
        },
      ),
    );
  }
}
