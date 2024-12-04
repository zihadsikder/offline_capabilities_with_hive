import 'package:flutter/material.dart';

import '../confiq/app_colors.dart';
import 'app_text_style.dart';

class AppThemeData {
  static ThemeData lightThemeData = ThemeData(

    primaryColor: Colors.green,

    primarySwatch: Colors.green,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.bgColor,
      titleTextStyle: AppTextStyle.headerStyle(),
    ),

    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(8.0),
      ),
      tileColor: AppColors.bgColor,
    ),
    cardTheme: CardTheme(
      //color: Colors.green.shade50,
      color: AppColors.bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  );
}