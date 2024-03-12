import 'package:flutter/material.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/styles_manager.dart';

class TitleAboutDaysOfForecast extends StatelessWidget {
  const TitleAboutDaysOfForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          child: Text(
            "7-day forcast",
            style: StylesManager.font22Bold,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 1,
                color: ColorManager.mediuGrey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
