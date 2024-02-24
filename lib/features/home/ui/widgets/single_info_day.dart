import 'package:flutter/material.dart';
import 'package:weather_app_task/core/helper/spacing.dart';
import 'package:weather_app_task/core/theming/images_manager.dart';
import 'package:weather_app_task/core/theming/styles_manager.dart';

import '../../../../core/theming/colors_manager.dart';

class SingleInfoDay extends StatelessWidget {
  const SingleInfoDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today",
                style: StylesManager.font20white,
              ),
              Image.asset(ImagesManager.icon3),
              Text(
                "-2°C",
                style: StylesManager.font20Grey,
              ),
              Text(
                "5°C",
                style: StylesManager.font20white,
              ),
            ],
          ),
          verticalSpace(8),
          Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: ColorManager.mediuGrey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
