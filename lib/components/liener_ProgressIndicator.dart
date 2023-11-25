import 'package:flutter/material.dart';

class CustomLinearProgressIndicator extends StatelessWidget {
  const CustomLinearProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: LinearProgressIndicator(
          backgroundColor: Colors.grey[300], // Background color
          valueColor: const AlwaysStoppedAnimation<Color>(
              Colors.blue), // Progress color
          value: 0.7, // Set progress to 50%
        ),
      ),
    );
  }
}
