part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<CurrentWeather> weatherData;
  final String? cityName;
  final double? lon;
  final double? lat;
  const SearchSuccess(
      {required this.weatherData, this.cityName, this.lat, this.lon});
}

final class SearchFailure extends SearchState {
  final String errorMessage;

  const SearchFailure({required this.errorMessage});
}
