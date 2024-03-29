import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/images_manager.dart';
import '../../../../core/theming/styles_manager.dart';
import '../../data/current_weather/current_weather.dart';
import 'title_days_of_forecast.dart';

class DaysOfForecast extends StatelessWidget {
  const DaysOfForecast({Key? key, required this.currentWeatherList})
      : super(key: key);

  final List<CurrentWeather> currentWeatherList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 460,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleAboutDaysOfForecast(),
          verticalSpace(10),
          Expanded(
            child: ListView.builder(
              itemCount: currentWeatherList.length,
              itemBuilder: (context, index) {
                final dateTime =
                    DateTime.parse(currentWeatherList[index].dtTxt!);
                final dayName = DateFormat('EEEE').format(dateTime);

                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                dayName,
                                style: StylesManager.font20white,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                ImagesManager.splashViewIcon,
                                width: 30,
                              ),
                            ),
                            horizantalSpace(30),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "-2°C",
                                style: StylesManager.font20Grey,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "5°C",
                                style: StylesManager.font20white,
                              ),
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
