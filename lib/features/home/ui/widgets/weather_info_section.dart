import 'package:flutter/material.dart';
import 'package:weather_app_task/core/helper/spacing.dart';
import 'package:weather_app_task/core/theming/colors_manager.dart';
import 'package:weather_app_task/core/theming/images_manager.dart';
import 'package:weather_app_task/core/theming/styles_manager.dart';

import 'icon_and_temp_info.dart';
import 'image_and_text_whear_info.dart';

class WeatherInfoSection extends StatelessWidget {
  const WeatherInfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 360,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            child: Text(
              "Forecast for today",
              style: StylesManager.font22Bold,
            ),
          ),
          verticalSpace(10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      const Expanded(
                        child: Flexible(
                          child: IconAndTempInfo(),
                        ),
                      ),
                      verticalSpace(4),
                      const Expanded(
                        child: Flexible(
                          child: ImageAndTextWeatherInfo(
                            text: "20 km/h",
                            image: ImagesManager.icon2,
                          ),
                        ),
                      ),
                      verticalSpace(4),
                      Expanded(
                        child: Flexible(
                          child: ImageAndTextWeatherInfo(
                            image: ImagesManager.icon2,
                            text: "0 %",
                            color: ColorManager.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
