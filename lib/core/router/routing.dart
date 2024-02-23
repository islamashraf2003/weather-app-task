import 'package:go_router/go_router.dart';
import 'package:weather_app_task/features/home/ui/home_view.dart';

abstract class AppROuting {
  static const String homeView = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
