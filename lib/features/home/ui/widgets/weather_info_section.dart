import 'package:flutter/material.dart';
import 'package:weather_app_task/core/helper/spacing.dart';
import 'package:weather_app_task/core/theming/colors_manager.dart';
import 'package:weather_app_task/core/theming/images_manager.dart';
import 'package:weather_app_task/core/theming/styles_manager.dart';
import 'package:weather_app_task/features/home/data/current_weather/current_weather.dart';

import '../../../../core/helper/fun_temp.dart';
import '../../../../core/helper/image_temp.dart';
import 'image_and_text_whear_info.dart';

class WeatherInfoSection extends StatelessWidget {
  const WeatherInfoSection({Key? key, required this.currentWeatherInfoList})
      : super(key: key);
  final List<CurrentWeather> currentWeatherInfoList;
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
              itemCount: currentWeatherInfoList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Flexible(
                          child: Container(
                            child: Column(
                              children: [
                                Text(
                                  "${calcTime(currentWeatherInfoList[index].dt ?? 0)}:00",
                                  style: StylesManager.font16White,
                                ),
                                verticalSpace(10),
                                Flexible(
                                  child: Image.asset(
                                    color: Colors.blue,
                                    getImage(currentWeatherInfoList[index]
                                        .weather![0]
                                        .main!),
                                    width: 60,
                                  ),
                                ),
                                verticalSpace(8),
                                Text(
                                  "${calcTemp(currentWeatherInfoList[index].main!.temp!)}°C",
                                  style: StylesManager.font16White,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      verticalSpace(20),
                      Expanded(
                        child: ImageAndTextWeatherInfo(
                          text:
                              "${currentWeatherInfoList[index].wind!.speed}km/h",
                          image: ImagesManager.windsImage,
                        ),
                      ),
                      Expanded(
                        child: Flexible(
                          child: ImageAndTextWeatherInfo(
                            image: ImagesManager.rain,
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
