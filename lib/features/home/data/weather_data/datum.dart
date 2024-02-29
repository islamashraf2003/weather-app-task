import 'package:equatable/equatable.dart';

import 'weather.dart';

class Datum extends Equatable {
  final double? appMaxTemp;
  final double? appMinTemp;
  final int? clouds;
  final int? cloudsHi;
  final int? cloudsLow;
  final int? cloudsMid;
  final String? datetime;
  final double? dewpt;
  final double? highTemp;
  final double? lowTemp;
  final dynamic maxDhi;
  final double? maxTemp;
  final double? minTemp;
  final double? moonPhase;
  final double? moonPhaseLunation;
  final int? moonriseTs;
  final int? moonsetTs;
  final double? ozone;
  final int? pop;
  final double? precip;
  final double? pres;
  final int? rh;
  final double? slp;
  final int? snow;
  final int? snowDepth;
  final int? sunriseTs;
  final int? sunsetTs;
  final double? temp;
  final int? ts;
  final double? uv;
  final String? validDate;
  final double? vis;
  final Weather? weather;
  final String? windCdir;
  final String? windCdirFull;
  final int? windDir;
  final double? windGustSpd;
  final double? windSpd;

  const Datum({
    this.appMaxTemp,
    this.appMinTemp,
    this.clouds,
    this.cloudsHi,
    this.cloudsLow,
    this.cloudsMid,
    this.datetime,
    this.dewpt,
    this.highTemp,
    this.lowTemp,
    this.maxDhi,
    this.maxTemp,
    this.minTemp,
    this.moonPhase,
    this.moonPhaseLunation,
    this.moonriseTs,
    this.moonsetTs,
    this.ozone,
    this.pop,
    this.precip,
    this.pres,
    this.rh,
    this.slp,
    this.snow,
    this.snowDepth,
    this.sunriseTs,
    this.sunsetTs,
    this.temp,
    this.ts,
    this.uv,
    this.validDate,
    this.vis,
    this.weather,
    this.windCdir,
    this.windCdirFull,
    this.windDir,
    this.windGustSpd,
    this.windSpd,
  });

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      appMaxTemp: (json['app_max_temp'] as num?)?.toDouble(),
      appMinTemp: (json['app_min_temp'] as num?)?.toDouble(),
      clouds: json['clouds'] as int?,
      cloudsHi: json['clouds_hi'] as int?,
      cloudsLow: json['clouds_low'] as int?,
      cloudsMid: json['clouds_mid'] as int?,
      datetime: json['datetime'] as String?,
      dewpt: (json['dewpt'] as num?)?.toDouble(),
      highTemp: (json['high_temp'] as num?)?.toDouble(),
      lowTemp: (json['low_temp'] as num?)?.toDouble(),
      maxDhi: json['max_dhi'] as dynamic,
      maxTemp: (json['max_temp'] as num?)?.toDouble(),
      minTemp: (json['min_temp'] as num?)?.toDouble(),
      moonPhase: (json['moon_phase'] as num?)?.toDouble(),
      moonPhaseLunation: (json['moon_phase_lunation'] as num?)?.toDouble(),
      moonriseTs: json['moonrise_ts'] as int?,
      moonsetTs: json['moonset_ts'] as int?,
      ozone: (json['ozone'] as num?)?.toDouble(),
      pop: json['pop'] as int?,
      precip: (json['precip'] as num?)?.toDouble(),
      pres: (json['pres'] as num?)?.toDouble(),
      rh: json['rh'] as int?,
      slp: (json['slp'] as num?)?.toDouble(),
      snow: json['snow'] as int?,
      snowDepth: json['snow_depth'] as int?,
      sunriseTs: json['sunrise_ts'] as int?,
      sunsetTs: json['sunset_ts'] as int?,
      temp: (json['temp'] as num?)?.toDouble(),
      ts: json['ts'] as int?,
      uv: (json['uv'] as num?)?.toDouble(),
      validDate: json['valid_date'] as String?,
      vis: (json['vis'] as num?)?.toDouble(),
      weather: json['weather'] == null
          ? null
          : Weather.fromJson(json['weather'] as Map<String, dynamic>),
      windCdir: json['wind_cdir'] as String?,
      windCdirFull: json['wind_cdir_full'] as String?,
      windDir: json['wind_dir'] as int?,
      windGustSpd: (json['wind_gust_spd'] as num?)?.toDouble(),
      windSpd: (json['wind_spd'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'app_max_temp': appMaxTemp,
      'app_min_temp': appMinTemp,
      'clouds': clouds,
      'clouds_hi': cloudsHi,
      'clouds_low': cloudsLow,
      'clouds_mid': cloudsMid,
      'datetime': datetime,
      'dewpt': dewpt,
      'high_temp': highTemp,
      'low_temp': lowTemp,
      'max_dhi': maxDhi,
      'max_temp': maxTemp,
      'min_temp': minTemp,
      'moon_phase': moonPhase,
      'moon_phase_lunation': moonPhaseLunation,
      'moonrise_ts': moonriseTs,
      'moonset_ts': moonsetTs,
      'ozone': ozone,
      'pop': pop,
      'precip': precip,
      'pres': pres,
      'rh': rh,
      'slp': slp,
      'snow': snow,
      'snow_depth': snowDepth,
      'sunrise_ts': sunriseTs,
      'sunset_ts': sunsetTs,
      'temp': temp,
      'ts': ts,
      'uv': uv,
      'valid_date': validDate,
      'vis': vis,
      'weather': weather?.toJson(),
      'wind_cdir': windCdir,
      'wind_cdir_full': windCdirFull,
      'wind_dir': windDir,
      'wind_gust_spd': windGustSpd,
      'wind_spd': windSpd,
    };
  }

  @override
  List<Object?> get props {
    return [
      appMaxTemp,
      appMinTemp,
      clouds,
      cloudsHi,
      cloudsLow,
      cloudsMid,
      datetime,
      dewpt,
      highTemp,
      lowTemp,
      maxDhi,
      maxTemp,
      minTemp,
      moonPhase,
      moonPhaseLunation,
      moonriseTs,
      moonsetTs,
      ozone,
      pop,
      precip,
      pres,
      rh,
      slp,
      snow,
      snowDepth,
      sunriseTs,
      sunsetTs,
      temp,
      ts,
      uv,
      validDate,
      vis,
      weather,
      windCdir,
      windCdirFull,
      windDir,
      windGustSpd,
      windSpd,
    ];
  }
}
