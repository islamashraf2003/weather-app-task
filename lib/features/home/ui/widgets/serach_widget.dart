import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app_task/core/router/routing.dart';
import 'package:weather_app_task/features/home/logic/Search_Cubit/search_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search a City'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (city) async {
              await context
                  .read<SearchCubit>()
                  .getCurrentWeather(cityName: city);
              GoRouter.of(context).go(AppRouting.homeView);
            },
            decoration: InputDecoration(
              hintText: 'Enter City Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              label: const Text('Search'),
              suffixIcon: const Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
