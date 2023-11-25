import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDotIndicator extends StatefulWidget {
  const CustomDotIndicator({super.key});

  @override
  State<CustomDotIndicator> createState() => _CustomDotIndicatorState();
}

class _CustomDotIndicatorState extends State<CustomDotIndicator> {
  int _currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: DotsIndicator(
        dotsCount: 6,
        position: _currentIndex,
        onTap: (position) {
          setState(() => _currentIndex = position);
        },
        decorator: DotsDecorator(
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeColor: Colors.purple,
          color: Colors.white,
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
    );
  }
}
