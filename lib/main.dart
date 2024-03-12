import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_task/core/router/routing.dart';
import 'package:weather_app_task/features/home/data/repo/home_implementaions.dart';
import 'package:weather_app_task/features/home/data/repo/home_repo.dart';
import 'package:weather_app_task/features/home/logic/Search_Cubit/search_cubit.dart';

import 'core/theming/app_theming.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HomeRepo homeRepo = HomeImpl();
  homeRepo.getWeatherDaysForecastByCityName(cityName: "cairo");
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SearchCubit>(
          create: (context) => SearchCubit(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouting.router,
        theme: AppTheming.lightTheme,
        darkTheme: AppTheming.darkTheme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
