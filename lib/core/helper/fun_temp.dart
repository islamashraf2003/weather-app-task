import 'package:flutter/material.dart';
import 'package:weather_app_task/core/theming/styles_manager.dart';

int calcTemp(double num) {
  double result = num - 273.15;
  return result.toInt();
}

int calcTime(int num) {
  var dateTime = DateTime.fromMillisecondsSinceEpoch(num * 1000);
  return dateTime.hour;
}

//de fun convert the first letter to upperCase
extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

TextStyle checkTemp(int temperature) {
  if (temperature > 25) {
    return StylesManager.font36Red;
  } else {
    return StylesManager.font36Blue;
  }
}
