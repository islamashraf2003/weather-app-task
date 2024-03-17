import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app_task/features/home/data/current_weather/current_weather.dart';
import '../../../../core/helper/fun_temp.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles_manager.dart';
import 'app_bar_section.dart';
import 'days_of_forcast.dart';
import 'weather_info_section.dart';

class WeatherInfoSuccess extends StatelessWidget {
  const WeatherInfoSuccess({
    super.key,
    required this.currentWeather,
    required this.cityName,
  });
  final List<CurrentWeather> currentWeather;
  final String cityName;

  @override
  Widget build(BuildContext context) {
    String capitalizedCityName = cityName.capitalize();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const AppBarSection(),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(10),
                Text(
                  capitalizedCityName,
                  style: StylesManager.font40Bold,
                ),
                verticalSpace(10),
                Text(
                  "Today",
                  style: StylesManager.font25Grey,
                ),
                verticalSpace(10),
                Text(
                  "${calcTemp(currentWeather[0].main!.temp!)}°C",
                  style: checkTemp(calcTemp(currentWeather[0].main!.temp!)),
                  //3ashan hene hat4ayar 3ala hasab el temp
                ),
                Text(
                  currentWeather[0].weather![0].main!,
                  style: StylesManager.font25Grey,
                ),
                verticalSpace(10),
                Text(
                  "${calcTemp(currentWeather[0].main!.tempMin!)}°C/${calcTemp(currentWeather[0].main!.tempMax!)}°C",
                  style: StylesManager.font20Blue,
                ),
                verticalSpace(10),
                WeatherInfoSection(
                  currentWeatherInfoList: currentWeather,
                ),
                verticalSpace(20),
                DaysOfForecast(
                  currentWeatherList: currentWeather,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
