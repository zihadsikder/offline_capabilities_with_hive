import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/core/constants/theme_data.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Assignment One",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      theme: AppThemeData.lightThemeData,
      themeMode: ThemeMode.system,
      getPages: AppPages.routes,
    ),
  );
}
