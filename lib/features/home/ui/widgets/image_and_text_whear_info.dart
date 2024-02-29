import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app_task/core/helper/spacing.dart';
import 'package:weather_app_task/core/theming/styles_manager.dart';

class ImageAndTextWeatherInfo extends StatelessWidget {
  const ImageAndTextWeatherInfo(
      {super.key, required this.text, required this.image, this.color});
  final String text;
  final String image;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(4),
        Image.asset(
          image,
          width: 35,
          color: color,
        ),
        verticalSpace(8),
        Text(
          text,
          style: StylesManager.font16Grey.copyWith(
            color: color,
          ),
        ),
      ],
    );
  }
}
