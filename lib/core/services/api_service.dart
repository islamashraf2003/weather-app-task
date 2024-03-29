import 'package:dio/dio.dart';

class ApiService {
  //https://api.weatherbit.io/v2.0/forecast/daily?&lat=30.033333&lon=31.233334&key=8728e69bff90454f93490374de1f3acc
  final String baseUrl =
      "https://api.openweathermap.org/data/2.5/weather?cnt=7&appid=";
  final String apiKey = "672c72a7f5e5c95a71beba671d8058ac";
  Dio dio = Dio();
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    try {
      Response response = await dio.get("$baseUrl$apiKey$endPoint");
      return response.data;
    } catch (error) {
      throw Exception('Failed to fetch data: $error');
    }
  }

  Future<Map<String, dynamic>> getDayesForecast(
      {required String endPoint}) async {
    try {
      Response response = await dio.get(
          "https://api.openweathermap.org/data/2.5/forecast?cnt=7&appid=$apiKey$endPoint");
      return response.data;
    } catch (error) {
      throw Exception('Failed to fetch data: $error');
    }
  }
}
