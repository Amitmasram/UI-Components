import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: SizedBox(
          width: 250.0,
          child: DefaultTextStyle(
            style: const TextStyle(fontSize: 20.0),
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText('Hello World!',
                    speed: const Duration(milliseconds: 300)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
