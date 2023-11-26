import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

class CustomLiquidProgressIndicator extends StatefulWidget {
  const CustomLiquidProgressIndicator({super.key});

  @override
  State<CustomLiquidProgressIndicator> createState() =>
      _CustomLiquidProgressIndicatorState();
}

class _CustomLiquidProgressIndicatorState
    extends State<CustomLiquidProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: SizedBox(
          height: 150,
          width: 180,
          child: LiquidCircularProgressIndicator(
            value: 0.5,
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
            backgroundColor: Colors
                .white, // Defaults to the current Theme's backgroundColor.
            borderColor: Colors.black,
            borderWidth: 5.0,
            direction: Axis
                .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
            center: const Text("Loading..."),
          ),
        ),
      ),
    );
  }
}
