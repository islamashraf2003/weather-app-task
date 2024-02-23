import 'package:flutter/material.dart';
import 'package:weather_app_task/core/helper/spacing.dart';
import 'package:weather_app_task/core/theming/images_manager.dart';

class IconAndTempInfo extends StatelessWidget {
  const IconAndTempInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Container(
        child: Column(
          children: [
            Text("18:00"),
            verticalSpace(4),
            Image.asset(
              ImagesManager.icon,
              width: 50,
            ),
            Text("-5°C"),
          ],
        ),
      ),
    );
  }
}
