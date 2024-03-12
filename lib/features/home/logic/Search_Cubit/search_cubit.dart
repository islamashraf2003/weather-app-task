import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app_task/features/home/data/repo/home_implementaions.dart';
import 'package:weather_app_task/features/home/data/repo/home_repo.dart';

import '../../data/current_weather/current_weather.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  final HomeRepo homeRepo = HomeImpl();
  String? cityName;
  Future<void> getCurrentWeather({required String cityName}) async {
    emit(SearchLoading());
    try {
      var result =
          await homeRepo.getWeatherDaysForecastByCityName(cityName: cityName);
      this.cityName = cityName;
      result.fold(
        (error) {
          emit(SearchFailure(errorMessage: error.errorMessage));
        },
        (success) {
          emit(SearchSuccess(weatherData: success, cityName: cityName));
        },
      );
    } catch (e) {
      emit(SearchFailure(errorMessage: e.toString()));
    }
  }
}
