import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app_task/features/home/data/current_weather/current_weather.dart';
import 'package:weather_app_task/features/home/data/repo/home_implementaions.dart';

import '../../data/repo/home_repo.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());
  HomeRepo homeRepo = HomeImpl();

  Future<void> getCurrenLocation(
      {required double lat, required double lon}) async {
    emit(LocationLoading());
    try {
      var result = await homeRepo.getWeatherDataByLocation(lat: lat, lon: lon);

      result.fold(
        (error) {
          emit(LocationFailure(errorMessage: error.errorMessage));
        },
        (success) {
          emit(LocationSuccess(weatherData: success));
        },
      );
    } catch (e) {
      emit(LocationFailure(errorMessage: e.toString()));
    }
  }
}
