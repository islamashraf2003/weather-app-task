import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app_task/core/helper/spacing.dart';
import 'package:weather_app_task/core/router/routing.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/alert.png',
                width: 100,
              ),
              const Text(
                "Please enter a valid city name",
                style: TextStyle(fontSize: 18),
              ),
              verticalSpace(20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  fixedSize: const Size(90, 40),
                ),
                onPressed: () {
                  GoRouter.of(context).go(AppRouting.searchView);
                },
                child: const Text(
                  'Ok',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
