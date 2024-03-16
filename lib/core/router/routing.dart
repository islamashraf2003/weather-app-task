import 'package:go_router/go_router.dart';
import 'package:weather_app_task/features/home/ui/home_view.dart';
import 'package:weather_app_task/features/home/ui/widgets/serach_widget.dart';
import '../../features/splash/ui/splash_view.dart';

abstract class AppRouting {
  static const String homeView = '/homeView';
  static const String splashView = '/';
  static const String searchView = '/searchWidget';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splashView,
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) {
          return const SearchView();
        },
      ),
    ],
  );
}
