import 'package:equatable/equatable.dart';
import 'city_info.dart';
import 'clouds.dart';
import 'coord.dart';
import 'main.dart';
import 'sys.dart';
import 'weather.dart';
import 'wind.dart';

class CurrentWeather extends Equatable {
  final Coord? coord;
  final List<Weather>? weather;
  final String? base;
  final Main? main;
  final int? visibility;
  final Wind? wind;
  final Clouds? clouds;
  final int? dt;
  final String? dtTxt;
  final Sys? sys;
  final int? timezone;
  final int? id;
  final int? cod;
  final City? city;
  const CurrentWeather({
    this.city,
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.dtTxt,
    this.sys,
    this.timezone,
    this.id,
    this.cod,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      coord: json['coord'] == null
          ? null
          : Coord.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      base: json['base'] as String?,
      main: json['main'] == null
          ? null
          : Main.fromJson(json['main'] as Map<String, dynamic>),
      visibility: json['visibility'] as int?,
      wind: json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      clouds: json['clouds'] == null
          ? null
          : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      dt: json['dt'] as int?,
      dtTxt: json['dt_txt'] as String?,
      sys: json['sys'] == null
          ? null
          : Sys.fromJson(json['sys'] as Map<String, dynamic>),
      timezone: json['timezone'] as int?,
      id: json['id'] as int?,
      cod: json['cod'] as int?,
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'coord': coord?.toJson(),
      'weather': weather?.map((e) => e.toJson()).toList(),
      'base': base,
      'main': main?.toJson(),
      'visibility': visibility,
      'wind': wind?.toJson(),
      'clouds': clouds?.toJson(),
      'dt': dt,
      'dt_txt': dtTxt,
      'sys': sys?.toJson(),
      'timezone': timezone,
      'id': id,
      'cod': cod,
      'city': city?.toJson(), // Updated to serialize CityInfo,
    };
  }

  @override
  List<Object?> get props {
    return [
      coord,
      weather,
      base,
      main,
      visibility,
      wind,
      clouds,
      dt,
      dtTxt,
      sys,
      timezone,
      id,
      cod,
    ];
  }
}
