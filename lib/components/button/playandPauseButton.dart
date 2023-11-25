import 'package:flutter/material.dart';

class PlayAndPauseButton extends StatefulWidget {
  final Duration animationDuration;
  final Curve animationCurve;

  const PlayAndPauseButton(
      {this.animationDuration = const Duration(milliseconds: 350),
      this.animationCurve = Curves.bounceIn,
      Key? key})
      : super(key: key);

  @override
  State<PlayAndPauseButton> createState() => _PlayAndPauseButtonState();
}

class _PlayAndPauseButtonState extends State<PlayAndPauseButton>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;
  bool state = false;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: widget.animationDuration);

    _animation = CurvedAnimation(
        parent: _animationController, curve: widget.animationCurve);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: FloatingActionButton.extended(
          backgroundColor: Colors.indigo,
          label: Row(
            children: [
              Text(!state ? 'Play' : 'Pause'),
              AnimatedIcon(icon: AnimatedIcons.play_pause, progress: _animation)
            ],
          ),
          onPressed: () {
            if (!state) {
              _animationController.forward();
            } else {
              _animationController.reverse();
            }
            setState(() {
              state = !state;
            });
          },
        ),
      ),
    );
  }
}
