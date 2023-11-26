// ignore: file_names
import 'package:flutter/material.dart';

class BouncingButton extends StatefulWidget {
  final VoidCallback onTap;
  const BouncingButton({super.key, required this.onTap});

  @override
  State<BouncingButton> createState() => _BouncingButtonState();
}

class _BouncingButtonState extends State<BouncingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _animationDuration = const Duration(milliseconds: 300);
  final Tween<double> _tween = Tween<double>(begin: 1.0, end: 0.95);
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: _animationDuration,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            _controller.forward().then((_) {
              _controller.reverse();
            });
            widget.onTap();
          },
          child: ScaleTransition(
              scale: _tween.animate(
                CurvedAnimation(
                  parent: _controller,
                  curve: Curves.easeOut,
                  reverseCurve: Curves.easeIn,
                ),
              ),
              child: Container(
                height: 50,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).primaryColor,
                ),
                child: const Text('Bounce',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              )),
        ),
      ),
    );
  }
}
