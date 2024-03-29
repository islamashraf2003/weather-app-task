import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app_task/core/helper/spacing.dart';
import 'package:weather_app_task/core/router/routing.dart';
import 'package:weather_app_task/core/theming/colors_manager.dart';
import 'package:weather_app_task/core/theming/images_manager.dart';
import 'package:weather_app_task/core/theming/styles_manager.dart';
import 'package:weather_app_task/features/home/logic/Search_Cubit/search_cubit.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator
        .isLocationServiceEnabled(); //check hal el location enable or not
    if (!serviceEnabled) {
      log('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        log('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      log('Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagesManager.splashViewIcon,
              color: Colors.yellow,
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
              onPressed: () async {
                Position position = await _determinePosition();
                await context.read<SearchCubit>().getCurrenLocation(
                    lat: position.latitude, lon: position.longitude);
                GoRouter.of(context).go(AppRouting.homeView);
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
