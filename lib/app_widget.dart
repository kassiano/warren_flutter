import 'package:flutter/material.dart';
import 'package:core_ui/themes/app_colors.dart';
import 'package:instuments_catalog/pages/instruments_catalog.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warren',
      theme: ThemeData(
        primaryColor: AppColors.wealthPrimaryLight,
      ),
      initialRoute: "/instruments_catalog",
      routes: {
        "/instruments_catalog": (context) => InstrumentsCatalog(),
      },
    );
  }
}
