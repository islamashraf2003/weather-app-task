// import 'package:get_it/get_it.dart';
// import 'package:weather_app_task/core/services/api_service.dart';
// import 'package:weather_app_task/features/home/data/repo/home_implementaions.dart';
// import 'package:weather_app_task/features/home/data/repo/home_repo.dart';
// import 'package:weather_app_task/features/home/logic/Location_Cubit/location_cubit.dart';
// import 'package:weather_app_task/features/home/logic/Search_Cubit/search_cubit.dart';

// final getIt = GetIt.instance;

// Future<void> setGetIt() async {
//   getIt.registerLazySingleton(() => ApiService());
//   getIt.registerLazySingleton<HomeRepo>(() => HomeImpl(apiService: getIt()));
//   getIt.registerLazySingletonAsync<SearchCubit>(() async {
//     await getIt.allReady();
//     return SearchCubit(homeRepo: getIt<HomeImpl>());
//   });
//   getIt.registerLazySingletonAsync<LocationCubit>(() async {
//     await getIt.allReady();
//     return LocationCubit(homeRepo: getIt<HomeRepo>());
//   });
// }
