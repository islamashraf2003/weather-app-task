import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_task/features/home/logic/Search_Cubit/search_cubit.dart';

class FetctWeatherDataBlockListener extends StatelessWidget {
  const FetctWeatherDataBlockListener({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchCubit, SearchState>(
      listener: (context, state) {
        if (state is SearchSuccess) {}
      },
      child: const SizedBox.shrink(),
    );
  }
}
