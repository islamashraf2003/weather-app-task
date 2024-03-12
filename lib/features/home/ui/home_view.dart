import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_task/features/home/logic/Search_Cubit/search_cubit.dart';

import 'widgets/error_message.dart';
import 'widgets/weather_info_success.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          if (state is SearchSuccess) {
            final currentWeather = state.weatherData;
            return WeatherInfoSuccess(
              cityName: state.cityName,
              currentWeather: currentWeather,
            );
          } else if (state is SearchFailure) {
            return const Center(
              child: ErrorMessage(),
            );
          } else {
            return const CircularProgressIndicator(
              color: Colors.blue,
            );
          }
        },
      ),
    );
  }
}
