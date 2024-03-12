import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_task/features/home/logic/Search_Cubit/search_cubit.dart';
import 'package:weather_app_task/features/home/ui/home_view.dart';

class HomeBLoc extends StatelessWidget {
  const HomeBLoc({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            if (state is SearchSuccess) {
              final weather = state.weatherData;
              return HomeView();
            } else if (state is SearchFailure) {
              return Text("there was an error: ${state.errorMessage}");
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.blue,
              ));
            }
          },
        ),
      ),
    );
  }
}
