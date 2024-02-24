import 'package:flutter/material.dart';
import 'package:weather_app_task/core/theming/colors_manager.dart';

abstract class AppTheming {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.white,
      primary: Colors.white,
      secondary: ColorManager.lightGrey,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Colors.black,
      primary: Colors.black,
      secondary: ColorManager.lightBlck,
    ),
  );
}
