import 'package:flutter/material.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({super.key});

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RangeSlider(
          values: _currentRangeValues,
          min: 0,
          max: 100,
          activeColor: Colors.purple,
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ),
      ),
    );
  }
}
