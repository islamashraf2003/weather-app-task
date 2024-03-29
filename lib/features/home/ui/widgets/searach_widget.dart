import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app_task/core/helper/spacing.dart';
import 'package:weather_app_task/core/router/routing.dart';
import 'package:weather_app_task/features/home/logic/Search_Cubit/search_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _cityController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search a City'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _cityController,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Enter City Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      labelText: 'Search',
                      suffixIcon: IconButton(
                        onPressed: () async {
                          final city = _cityController.text;
                          if (city.isNotEmpty) {
                            await context
                                .read<SearchCubit>()
                                .getCurrentWeather(cityName: city);
                            GoRouter.of(context).go(AppRouting.homeView);
                          }
                        },
                        icon: const Icon(Icons.search),
                      ),
                    ),
                    onSubmitted: (city) async {
                      if (city.isNotEmpty) {
                        await context
                            .read<SearchCubit>()
                            .getCurrentWeather(cityName: city);
                        GoRouter.of(context).go(AppRouting.homeView);
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Use Current Location',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(20),
            const Text(
              'Powered by OpenWeatherMap',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
