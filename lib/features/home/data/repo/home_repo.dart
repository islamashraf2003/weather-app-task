import 'package:dartz/dartz.dart';
import 'package:weather_app_task/core/helper/faulier.dart';

import '../weather_data/weather_data.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<WeatherData>>> getWeatherDataByLocation(
      {required String lat, required String lon});
}
