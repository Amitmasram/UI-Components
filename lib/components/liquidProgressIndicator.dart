import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

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
    return Scaffold(
      body: Center(
        child: LiquidCircularProgressIndicator(
          value: 0.5,
          valueColor: const AlwaysStoppedAnimation(Colors.blue),
          backgroundColor:
              Colors.white, // Defaults to the current Theme's backgroundColor.
          borderColor: Colors.red,
          borderWidth: 5.0,
          direction: Axis
              .horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
          center: const Text("Loading..."),
        ),
      ),
    );
  }
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
//   late AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 2),
//     )..repeat(reverse: true);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: CircleAvatar(
//           radius: 30,
//           child: CustomPaint(
//             size: Size.fromHeight(20),
//             painter: LiquidProgressPainter(
//               animation: _controller,
//             ),
//             child: Container(
//               alignment: Alignment.center,
//               child: const Text("Loading..."),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }

// class LiquidProgressPainter extends CustomPainter {
//   final Animation<double> animation;

//   LiquidProgressPainter({required this.animation}) : super(repaint: animation);

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = Colors.blue
//       ..style = PaintingStyle.fill;

//     double progress = animation.value;
//     double waveHeight = 20.0;
//     double waveFrequency = 2.0;
//     double waveOffset = size.height * 0.7;

//     Path path = Path();
//     path.moveTo(0, size.height);

//     for (double i = 0.0; i <= size.width; i++) {
//       double y =
//           sin((i / size.width * waveFrequency) * 2 * pi + (progress * 2 * pi)) *
//               waveHeight;
//       path.lineTo(i, size.height - y - waveOffset);
//     }

//     path.lineTo(size.width, size.height);
//     path.close();

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }
