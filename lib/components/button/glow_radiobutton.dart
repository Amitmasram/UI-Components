import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

class GlowRadioButton extends StatefulWidget {
  const GlowRadioButton({super.key});

  @override
  State<GlowRadioButton> createState() => _GlowRadioButtonState();
}

class _GlowRadioButtonState extends State<GlowRadioButton> {
  bool radioSelected = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GlowRadio<bool>(
            value: true,
            groupValue: radioSelected,
            checkColor: Colors.white,
            color: Colors.purple,
            onChange: (value) {
              setState(() {
                radioSelected = value;
              });
            },
          ),
          const SizedBox(width: 32),
          GlowRadio<bool>(
            value: false,
            checkColor: Colors.white,
            color: Colors.purple,
            groupValue: radioSelected,
            onChange: (value) {
              setState(() {
                radioSelected = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
