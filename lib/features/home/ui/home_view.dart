import 'package:flutter/material.dart';
import 'package:weather_app_task/core/helper/spacing.dart';
import 'package:weather_app_task/core/theming/colors_manager.dart';
import 'package:weather_app_task/core/theming/styles_manager.dart';

import 'widgets/days_of_forcast.dart';
import 'widgets/weather_info_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                title: const Text("Weather App"),
                centerTitle: true,
                floating: true,
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.view_list),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle),
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalSpace(10),
                    Center(
                      child: Text(
                        "Egypt",
                        style: StylesManager.font40Bold,
                      ),
                    ),
                    verticalSpace(10),
                    Text(
                      "Today",
                      style: StylesManager.font125Grey,
                    ),
                    verticalSpace(10),
                    Text(
                      "23°C",
                      //TODO:: hena han5ayar el color 3ala hasab el temp
                      style: StylesManager.font36Blue,
                    ),
                    Text(
                      "Sunny",
                      style: StylesManager.font125Grey,
                    ),
                    verticalSpace(10),
                    Text(
                      "-5°C/2°C",
                      style: StylesManager.font20Blue,
                    ),
                    verticalSpace(30),
                    const WeatherInfoSection(),
                    verticalSpace(20),
                    const DaysOfForecast()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
