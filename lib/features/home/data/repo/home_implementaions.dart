import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:weather_app_task/features/home/data/repo/home_repo.dart';

import '../../../../core/helper/faulier.dart';
import '../../../../core/services/api_service.dart';
import '../current_weather/current_weather.dart';

class HomeImpl implements HomeRepo {
  HomeImpl();

  final ApiService apiService = ApiService();

  @override
  Future<Either<Failure, CurrentWeather>> getWeatherDataByLocation(
      {required String lat, required String lon}) async {
    try {
      final response = await apiService.get(endPoint: "lat=$lat&lon=$lon");
      CurrentWeather currentWeather = CurrentWeather.fromJson(response);
      return Right(currentWeather);
    } catch (error) {
      return Left(ServerFailure(errorMessage: error.toString()));
    }
  }

  @override
  Future<Either<Failure, CurrentWeather>> getWeatherByCityName(
      {required String cityName}) async {
    try {
      final response = await apiService.get(endPoint: "&q=$cityName");
      final currentWeather = CurrentWeather.fromJson(response);
      log(currentWeather.toString());
      return Right(currentWeather);
    } catch (error) {
      return Left(ServerFailure(errorMessage: error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CurrentWeather>>>
      getWeatherDaysForecastByCityName({required String cityName}) async {
    try {
      final response =
          await apiService.getDayesForecast(endPoint: "&q=$cityName");
      List<CurrentWeather> weatherDaysForecast = [];

      for (var weather in response['list']) {
        try {
          weatherDaysForecast.add(CurrentWeather.fromJson(weather));
        } catch (error) {
          log("there was an error in weather Days Forecast ");
        }
      }

      log(weatherDaysForecast.toString());
      log(cityName);
      return Right(weatherDaysForecast);
    } catch (error) {
      return Left(ServerFailure(errorMessage: error.toString()));
    }
  }
}
