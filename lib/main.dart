import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'core/theming/app_theming.dart';
import 'features/home/ui/home_view.dart';

void main() {
  // void getCurrentPosition() async {
  //   LocationPermission permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied ||
  //       permission == LocationPermission.deniedForever) {
  //     log("permission not given");
  //     LocationPermission asked = await Geolocator.requestPermission();
  //   } else {
  //     Position currentPosition = await Geolocator.getCurrentPosition(
  //         desiredAccuracy: LocationAccuracy.best);
  //     log("Longitude: " + currentPosition.longitude.toString());
  //     log("Latitude: " + currentPosition.latitude.toString());
  //   }
  // }

  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheming.lightTheme,
      darkTheme: AppTheming.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const SafeArea(
        child: HomeView(),
      ),
    );
  }
}
