import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:weather_app_task/features/home/data/repo/home_repo.dart';

import '../../../../core/helper/faulier.dart';
import '../../../../core/services/api_service.dart';
import '../../ui/widgets/weather_info_success.dart';
import '../current_weather/current_weather.dart';

class HomeImpl implements HomeRepo {
  HomeImpl();

  final ApiService apiService = ApiService();

  @override
  Future<Either<Failure, List<CurrentWeather>>> getWeatherDataByLocation(
      {required double lat, required double lon}) async {
    try {
      final response =
          await apiService.getDayesForecast(endPoint: "&lat=$lat&lon=$lon");
      List<CurrentWeather> weatherDaysForecast = [];

      for (var weather in response['list']) {
        try {
          weatherDaysForecast.add(CurrentWeather.fromJson(weather));
        } catch (error) {
          log("there was an error in weather Days Forecast ");
        }
      }

      String? city = response['city'] != null ? response['city']['name'] : null;

      log(weatherDaysForecast.toString());
      log("my cityyyyyyyy:::$city");
      WeatherInfoSuccess(
        currentWeather: weatherDaysForecast,
        cityName: city,
      );
      return Right(weatherDaysForecast);
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
      String city = response['city']['name'];

      for (var weather in response['list']) {
        try {
          weatherDaysForecast.add(CurrentWeather.fromJson(weather));
        } catch (error) {
          log("there was an error in weather Days Forecast ");
        }
      }

      WeatherInfoSuccess(
        currentWeather: weatherDaysForecast,
        cityName: city,
      );
      log(weatherDaysForecast.toString());

      return Right(weatherDaysForecast);
    } catch (error) {
      return Left(ServerFailure(errorMessage: error.toString()));
    }
  }
}
