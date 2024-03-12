import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app_task/core/router/routing.dart';

class AppBarSection extends StatefulWidget {
  const AppBarSection({super.key});

  @override
  State<AppBarSection> createState() => _AppBarSectionState();
}

class _AppBarSectionState extends State<AppBarSection> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: const Text("Weather App"),
      centerTitle: true,
      leading: Align(
        alignment: Alignment.topLeft,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.view_list),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).go(AppRouting.searchView);
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
