import 'package:flutter/material.dart';

class NeumorphicAnimatedIcon extends StatefulWidget {
  const NeumorphicAnimatedIcon({super.key});

  @override
  State<NeumorphicAnimatedIcon> createState() => _NeumorphicAnimatedIconState();
}

class _NeumorphicAnimatedIconState extends State<NeumorphicAnimatedIcon>
    with TickerProviderStateMixin {
  double turns = 0.0;
  bool isClicked = false;
  late AnimationController _controller;
  Color customBlackColor = const Color.fromARGB(255, 53, 53, 53);
  Color customWhiteColor = const Color.fromARGB(255, 237, 237, 237);

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
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
        child: AnimatedRotation(
          turns: turns,
          curve: Curves.easeOutExpo,
          duration: const Duration(seconds: 1),
          child: GestureDetector(
            onTap: () {
              if (isClicked) {
                setState(() => turns -= 1 / 4);
                _controller.reverse();
              } else {
                setState(() => turns += 1 / 4);
                _controller.forward();
              }
              isClicked = !isClicked;
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInExpo,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: customWhiteColor,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 30,
                        offset: isClicked
                            ? const Offset(20, -20)
                            : const Offset(20, 20),
                        color: Colors.grey.shade700),
                    BoxShadow(
                        blurRadius: 30,
                        offset: isClicked
                            ? const Offset(-20, 20)
                            : const Offset(-20, -20),
                        color: Colors.black)
                  ]),
              child: SizedBox(
                height: 150,
                width: 150,
                child: Center(
                  child: AnimatedIcon(
                    icon: AnimatedIcons.menu_close,
                    progress: _controller,
                    size: 100,
                    color: customBlackColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
