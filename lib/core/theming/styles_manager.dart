import 'package:flutter/material.dart';
import 'package:weather_app_task/core/theming/colors_manager.dart';

import 'font_weight_manager.dart';

abstract class StylesManager {
  static TextStyle font40Bold =
      TextStyle(fontSize: 40, fontWeight: FontWeightManager.bold);
  static TextStyle font22Bold = TextStyle(
    fontSize: 22,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle font18Grey = TextStyle(
    fontSize: 18,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.grey,
  );
}
