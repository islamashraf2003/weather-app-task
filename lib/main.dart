import 'package:flutter/material.dart';

import 'core/theming/app_theming.dart';
import 'features/home/ui/home_view.dart';

void main() {
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
