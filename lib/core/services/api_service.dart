import 'package:dio/dio.dart';

class ApiService {
  //https://api.weatherbit.io/v2.0/forecast/daily?&lat=30.033333&lon=31.233334&key=8728e69bff90454f93490374de1f3acc
  final String _baseUrl = "https://api.weatherbit.io/v2.0/forecast/daily?key=";
  final String _apiKey = "8728e69bff90454f93490374de1f3acc";
  Dio dio = Dio();
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await dio.get(_baseUrl + _apiKey + endPoint);
    return response.data;
  }
}
