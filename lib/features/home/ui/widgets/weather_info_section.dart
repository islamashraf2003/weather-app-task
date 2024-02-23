import 'package:flutter/material.dart';
import 'package:weather_app_task/core/helper/spacing.dart';
import 'package:weather_app_task/core/theming/colors_manager.dart';
import 'package:weather_app_task/core/theming/styles_manager.dart';

import 'icon_and_temp_info.dart';

class WeatherInfoSection extends StatelessWidget {
  const WeatherInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      width: double.infinity,
      height: 380,
      decoration: BoxDecoration(
        color: ColorManager.grey,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Forcast for today",
            style: StylesManager.font22Bold,
          ),
          verticalSpace(18),
          Row(
            children: [
              const IconAndTempInfo(),
              IconAndTempInfo(),
              IconAndTempInfo(),
              IconAndTempInfo(),
              IconAndTempInfo(),
            ],
          ), //TODO::less mehtaga a3mel implementation
        ],
      ),
    );
  }
}
