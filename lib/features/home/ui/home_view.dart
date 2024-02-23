import 'package:flutter/material.dart';
import 'package:weather_app_task/core/helper/spacing.dart';
import 'package:weather_app_task/core/theming/styles_manager.dart';

import 'widgets/weather_info_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Text("Weather App"),
          centerTitle: true,
          leading: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.view_list),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_circle),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(30),
              Center(
                child: Text(
                  "Egypt",
                  style: StylesManager.font40Bold,
                ),
              ),
              verticalSpace(4),
              Text(
                "Today",
                style: StylesManager.font18Grey,
              ),
              verticalSpace(10),
              const Text("23°C"),
              verticalSpace(10),
              const Text("-5°C/2°C"),
              //weather info
              verticalSpace(30),
              const WeatherInfoSection(),
            ],
          ),
        ),
      ),
    );
  }
}
