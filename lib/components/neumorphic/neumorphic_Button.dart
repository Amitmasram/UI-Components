import 'package:flutter/material.dart';
import 'package:neumorphic_button/neumorphic_button.dart';

/// For this we need add Package - neumorphic_button
class CustomNeumorphicButton extends StatelessWidget {
  const CustomNeumorphicButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: NeumorphicButton(
          onTap: () {},
          bottomRightShadowBlurRadius: 15,
          bottomRightShadowSpreadRadius: 1,
          borderWidth: 5,
          backgroundColor: Colors.grey.shade500,
          topLeftShadowBlurRadius: 15,
          topLeftShadowSpreadRadius: 1,
          topLeftShadowColor: Colors.black,
          bottomRightShadowColor: Colors.grey.shade500,
          height: 50,
          padding: EdgeInsets.zero,
          width: double.infinity,
          bottomRightOffset: const Offset(4, 4),
          topLeftOffset: const Offset(-4, -4),
          child: const Center(
              child: Text('Click Me', style: TextStyle(color: Colors.black))),
        ),
      ),
    );
  }
}
