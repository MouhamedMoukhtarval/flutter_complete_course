import 'package:app_serving_doctors/features/home/data/models/specialization_response_model.dart';
import 'package:app_serving_doctors/features/home/ui/widgets/doctor_list_view_item.dart';
import 'package:flutter/widgets.dart';

class DoctorListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorListViewItem(doctorsModel: doctorsList?[index]);
        },
      ),
    );
  }
}
