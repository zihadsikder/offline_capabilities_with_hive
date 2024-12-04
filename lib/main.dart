import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/core/constants/theme_data.dart';
import 'app/data/models/post_models.dart';
import 'app/routes/app_pages.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(PostModelAdapter()); // Register adapter for PostModel
  await Hive.openBox<PostModel>('posts');   // Open a box for storing posts
  runApp(
    GetMaterialApp(
      title: "Assignment Two",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      theme: AppThemeData.lightThemeData,
      themeMode: ThemeMode.system,
      getPages: AppPages.routes,
    ),
  );
}
