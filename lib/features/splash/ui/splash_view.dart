import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app_task/core/helper/spacing.dart';
import 'package:weather_app_task/core/router/routing.dart';
import 'package:weather_app_task/core/theming/styles_manager.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  // void _getLocationAndFetchWeather(BuildContext context) async {
  //   Position? position = await _determinePosition();
  //   if (position != null) {
  //     await context.read<LocationCubit>().getWeatherByLOcation(
  //           lat: position.latitude.toString(),
  //           lon: position.longitude.toString(),
  //         );
  //   } else {
  //     // Handle case when position is null
  //     log("Failed to get location.");
  //   }
  // }

  // Future<Position?> _determinePosition() async {
  //   // Your existing code
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/test.png"),
                verticalSpace(20),
                Text(
                  "WeatherApp",
                  style: StylesManager.font20Grey,
                ),
                verticalSpace(80),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff323232),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    fixedSize: const Size(300, 55),
                  ),
                  onPressed: () async {
                    GoRouter.of(context).go(AppRouting.searchView);
                  },
                  child: const Text(
                    'Go to Search by City',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                verticalSpace(15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff323232),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    fixedSize: const Size(300, 55),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Allow Location Services',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
