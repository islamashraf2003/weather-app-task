import 'package:flutter/material.dart';

class CurrenLocationWidget extends StatelessWidget {
  const CurrenLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        //TODO:: location!
      },
      child: const Text(
        'Allow Location Services',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }
}
