import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

class CustomGlowingText extends StatelessWidget {
  const CustomGlowingText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: GlowText(
          'Glowing Text',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
      ),
    );
  }
}
