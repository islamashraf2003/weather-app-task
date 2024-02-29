import 'package:dartz/dartz.dart';
import 'package:weather_app_task/core/helper/faulier.dart';
import 'package:weather_app_task/features/home/data/repo/home_repo.dart';
import 'package:weather_app_task/features/home/data/weather_data/weather_data.dart';

import '../../../../core/services/api_service.dart';

class HomeImple implements HomeRepo {
  final ApiService apiService = ApiService();
  @override
  Future<Either<Failure, List<WeatherData>>> getWeatherDataByLocation(
      {required String lat, required String lon}) async {
    try {
      var response = await apiService.get(endPoint: "$lat,$lon");
      List<WeatherData> weatherDataList = [];
      for (var data in response['data']) {
        WeatherData weatherData = WeatherData.fromJson(data);
        weatherDataList.add(weatherData);
      }
      return Right(weatherDataList);
    } catch (error) {
      return Left(ServerFailure(errorMessage: error.toString()));
    }
  }
}
