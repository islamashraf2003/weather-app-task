import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final String? icon;
  final String? description;
  final int? code;

  const Weather({this.icon, this.description, this.code});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      code: json['code'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'icon': icon,
      'description': description,
      'code': code,
    };
  }

  @override
  List<Object?> get props => [icon, description, code];
}
