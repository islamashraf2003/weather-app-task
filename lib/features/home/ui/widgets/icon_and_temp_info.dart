import 'package:flutter/material.dart';
import 'package:weather_app_task/core/helper/spacing.dart';
import 'package:weather_app_task/core/theming/images_manager.dart';
import 'package:weather_app_task/core/theming/styles_manager.dart';

class IconAndTempInfo extends StatelessWidget {
  const IconAndTempInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "18:00",
            style: StylesManager.font16White,
          ),
          verticalSpace(4),
          Image.asset(
            ImagesManager.icon,
            width: 50,
          ),
          verticalSpace(2),
          Text(
            "-5°C",
            style: StylesManager.font16White,
          ),
        ],
      ),
    );
  }
}
