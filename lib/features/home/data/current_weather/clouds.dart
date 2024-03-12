import 'package:equatable/equatable.dart';

class Clouds extends Equatable {
  final int? all;

  const Clouds({this.all});

  factory Clouds.fromJson(Map<String, dynamic> json) {
    return Clouds(
      all: json['all'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'all': all,
    };
  }

  @override
  List<Object?> get props => [all];
}
