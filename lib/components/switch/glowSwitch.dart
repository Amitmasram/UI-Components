import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

class CustomGlowSwitch extends StatefulWidget {
  const CustomGlowSwitch({super.key});

  @override
  State<CustomGlowSwitch> createState() => _CustomGlowSwitchState();
}

class _CustomGlowSwitchState extends State<CustomGlowSwitch> {
  bool switchSelected = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: GlowSwitch(
          onChanged: (value) {
            setState(() {
              switchSelected = value;
            });
          },
          value: switchSelected,
          activeColor: Colors.purple.withOpacity(0.6),
          blurRadius: 4,
        ),
      ),
    );
  }
}
