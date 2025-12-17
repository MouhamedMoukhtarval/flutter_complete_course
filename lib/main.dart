import 'package:app_serving_doctors/core/routes/app_router.dart';
import 'package:app_serving_doctors/doctor_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DocotrApp(
    appRouter: AppRouter(),
  ));
}
