import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

class CustomGlowCheckBox extends StatefulWidget {
  const CustomGlowCheckBox({super.key});

  @override
  State<CustomGlowCheckBox> createState() => _CustomGlowCheckBoxState();
}

class _CustomGlowCheckBoxState extends State<CustomGlowCheckBox> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: GlowCheckbox(
          value: isChecked,
          enable: true,
          color: Colors.purple,
          onChange: (bool value) {
            setState(() {
              isChecked = !isChecked;
            });
          },
        ),
      ),
    );
  }
}
