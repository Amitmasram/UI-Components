import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slider(
          value: _value,
          min: 0,
          max: 100,
          activeColor: Colors.purple,
          label: _value.toInt().toString(),
          onChanged: (newValue) {
            setState(() {
              _value = newValue;
            });
          },
        ),
      ),
    );
  }
}
