import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app_task/core/helper/spacing.dart';
import 'package:weather_app_task/core/router/routing.dart';
import 'package:weather_app_task/core/theming/colors_manager.dart';
import 'package:weather_app_task/core/theming/styles_manager.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/test.png",
            ),
            verticalSpace(40),
            Text(
              "WeatherApp",
              style: StylesManager.font25,
            ),
            verticalSpace(80),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go(AppRouting.searchView);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                minimumSize: const Size(300, 55),
              ),
              child: const Text(
                'Search by City',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            verticalSpace(20),
            TextButton(
              onPressed: () {
                //TODO:: location!
              },
              child: const Text(
                'Allow Location Services',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
