import 'package:dartz/dartz.dart';
import 'package:weather_app_task/core/helper/faulier.dart';

import '../current_weather/current_weather.dart';

abstract class HomeRepo {
  Future<Either<Failure, CurrentWeather>> getWeatherDataByLocation(
      {required String lat, required String lon});

  Future<Either<Failure, CurrentWeather>> getWeatherByCityName(
      {required String cityName});

  Future<Either<Failure, List<CurrentWeather>>>
      getWeatherDaysForecastByCityName({required String cityName});
}
