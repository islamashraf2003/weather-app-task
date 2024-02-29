import 'package:equatable/equatable.dart';

import 'datum.dart';

class WeatherData extends Equatable {
  final String? cityName;
  final String? countryCode;
  final List<Datum>? data;
  final double? lat;
  final double? lon;
  final String? stateCode;
  final String? timezone;

  const WeatherData({
    this.cityName,
    this.countryCode,
    this.data,
    this.lat,
    this.lon,
    this.stateCode,
    this.timezone,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      cityName: json['city_name'] as String?,
      countryCode: json['country_code'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      stateCode: json['state_code'] as String?,
      timezone: json['timezone'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'city_name': cityName,
      'country_code': countryCode,
      'data': data?.map((e) => e.toJson()).toList(),
      'lat': lat,
      'lon': lon,
      'state_code': stateCode,
      'timezone': timezone,
    };
  }

  @override
  List<Object?> get props {
    return [
      cityName,
      countryCode,
      data,
      lat,
      lon,
      stateCode,
      timezone,
    ];
  }
}
