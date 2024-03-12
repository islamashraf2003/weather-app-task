import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app_task/features/home/data/current_weather/current_weather.dart';

import '../../data/repo/home_repo.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit({required this.homeRepo}) : super(LocationInitial());
  HomeRepo homeRepo;

  Future<void> getWeatherByLOcation(
      {required String lat, required String lon}) async {
    emit(LocationLoading());
    var result = await homeRepo.getWeatherDataByLocation(lat: lat, lon: lon);
    result.fold((error) {
      emit(LocationFailure(errorMessage: error.errorMessage));
    }, (sucess) {
      emit(
        LocationSuccess(weatherData: sucess),
      );
    });
  }
}
/*
class LocationCubit extends Cubit<LocationState> {
  final HomeRepo homeRepo;

  LocationCubit({required this.homeRepo}) : super(LocationInitial());

  Future<void> getWeatherByLocation({required String lat, required String lon}) async {
    emit(LocationLoading());
    try {
      var result = await homeRepo.getWeatherDataByLocation(lat: lat, lon: lon);
      emit(LocationSuccess(weatherData: result));
    } catch (e) {
      emit(LocationFailure(errorMessage: 'Failed to fetch weather data'));
    }
  }
}

*/
