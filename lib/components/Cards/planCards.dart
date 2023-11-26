import 'dart:math' as math;
import 'package:flutter/material.dart';

class PlanCardComponent extends StatefulWidget {
  const PlanCardComponent({super.key});

  @override
  State<PlanCardComponent> createState() => _PlanCardComponentState();
}

class _PlanCardComponentState extends State<PlanCardComponent>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late AnimationController _radialProgressAnimationController;
  late Animation<double> _progressAnimation;
  final Duration fadeInDuration = const Duration(milliseconds: 500);
  final Duration fillDuration = const Duration(seconds: 2);
  double progressDegrees = 0;
  final double goalCompleted = 0.7;
  var count = 0;

  @override
  void initState() {
    super.initState();
    _radialProgressAnimationController =
        AnimationController(vsync: this, duration: fillDuration);
    _progressAnimation = Tween(begin: 0.0, end: 360.0).animate(CurvedAnimation(
        parent: _radialProgressAnimationController, curve: Curves.easeIn))
      ..addListener(() {
        setState(() {
          progressDegrees = goalCompleted * _progressAnimation.value;
        });
      });

    _radialProgressAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Material(
      child: Center(
        child: Container(
          width: 380,
          height: 250,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            gradient:
                const LinearGradient(colors: [Colors.yellow, Colors.blue]),
            color: Colors.purple,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "My Plan",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "For Today",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "5/7 Complete",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
              CustomPaint(
                painter: RadialPainter(progressDegrees),
                child: Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  child: AnimatedOpacity(
                    opacity: progressDegrees > 30 ? 1.0 : 0.0,
                    duration: fadeInDuration,
                    child: const Text(
                      "75%",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class RadialPainter extends CustomPainter {
  double progressInDegrees;

  RadialPainter(this.progressInDegrees);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black12
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, size.width / 2, paint);

    Paint progressPaint = Paint()
      ..shader = const LinearGradient(
              colors: [Colors.deepPurple, Colors.purple, Colors.purpleAccent])
          .createShader(Rect.fromCircle(center: center, radius: size.width / 2))
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    canvas.drawArc(
        Rect.fromCircle(center: center, radius: size.width / 2),
        -90 * (math.pi / 180),
        progressInDegrees * (math.pi / 180),
        false,
        progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
