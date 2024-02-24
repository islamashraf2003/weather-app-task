import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import 'single_info_day.dart';
import 'titke_days_of_forecast.dart';

class DaysOfForecast extends StatelessWidget {
  const DaysOfForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 460,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleAboutDaysOfForecast(),
          verticalSpace(10),
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: SingleInfoDay(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
