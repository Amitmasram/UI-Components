import 'package:flutter/material.dart';

class SliderWithCustomThumb extends StatefulWidget {
  const SliderWithCustomThumb({Key? key}) : super(key: key);
  @override
  _SliderWithCustomThumbState createState() => _SliderWithCustomThumbState();
}

class _SliderWithCustomThumbState extends State<SliderWithCustomThumb> {
  double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.grey,
            inactiveTrackColor: Colors.green,
            trackShape: const RoundedRectSliderTrackShape(),
            trackHeight: 8,
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
            thumbShape: const RoundSliderThumbShape(
                activeThumbWidth: 50,
                inactiveThumbWidth: 40,
                fillColor: Color(0xFF8B05BF),
                thumbText: '< >',
                elevation: 10,
                thumbTextStyle:
                    TextStyle(fontSize: 14, color: Color(0xFF9966CC))),
            overlayColor: Colors.transparent,
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
          ),
          child: Slider(
            value: _value,
            min: 0,
            divisions: 25,
            max: 100,
            onChanged: (value) {
              setState(
                () {
                  _value = value;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class RoundSliderThumbShape extends SliderComponentShape {
  const RoundSliderThumbShape(
      {this.fillColor = Colors.red,
      this.strokeColor,
      this.strokeWidth = 2,
      this.elevation = 0,
      this.shadowColor = const Color(0xFF000000),
      this.activeThumbWidth = 30,
      this.inactiveThumbWidth = 20,
      this.thumbText = '',
      this.thumbTextStyle = const TextStyle(
        color: Color(0xFFAE3DDF),
        fontSize: 14,
      )});

  ///The width of the Teardrop when slider is active
  final double activeThumbWidth;

  ///The width of the Teardrop when slider is inactive
  final double inactiveThumbWidth;

  ///The color of the Teardrop
  final Color? fillColor;

  ///The color of the Teardrop's border
  final Color? strokeColor;

  ///The color of the Teardrop's border
  final double strokeWidth;

  final Color shadowColor;
  final double elevation;

  ///The text displayed on the Teardrop, set to '' if you don't want any text
  final String thumbText;
  final thumbTextStyle;

  // double get _disabledThumbRadius => disabledThumbRadius ?? enabledThumbRadius;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size.fromRadius(10);
  }

  double translatePoint(double size, double constant, double translationValue) {
    return size * constant + translationValue;
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final Tween<double> radiusTween = Tween<double>(
      begin: inactiveThumbWidth,
      end: activeThumbWidth,
    );

    Size size = Size(radiusTween.evaluate(activationAnimation),
        (radiusTween.evaluate(activationAnimation)).toDouble());

    double posNeg = 1;
    double XTranslate = center.dx * posNeg - size.width / 2;
    double YTranslate = center.dy * posNeg +
        2 +
        (sliderTheme.trackHeight != null ? sliderTheme.trackHeight! / 2 : 0);

    Path path_0 = Path();
    path_0.moveTo(XTranslate + size.width * 0.6824492,
        YTranslate + size.height * 0.2545195);
    path_0.cubicTo(
        XTranslate + size.width * 0.6036973,
        YTranslate + size.height * 0.1315527,
        XTranslate + size.width * 0.5238008,
        YTranslate + size.height * 0.03013477,
        XTranslate + size.width * 0.5230039,
        YTranslate + size.height * 0.02912305);
    path_0.lineTo(XTranslate + size.width * 0.4999980, YTranslate);
    path_0.lineTo(XTranslate + size.width * 0.4769941,
        YTranslate + size.height * 0.02912500);
    path_0.cubicTo(
        XTranslate + size.width * 0.4761973,
        YTranslate + size.height * 0.03013477,
        XTranslate + size.width * 0.3963008,
        YTranslate + size.height * 0.1315527,
        XTranslate + size.width * 0.3175488,
        YTranslate + size.height * 0.2545215);
    path_0.cubicTo(
        XTranslate + size.width * 0.2097910,
        YTranslate + size.height * 0.4227734,
        XTranslate + size.width * 0.1551562,
        YTranslate + size.height * 0.5501699,
        XTranslate + size.width * 0.1551562,
        YTranslate + size.height * 0.6331719);
    path_0.cubicTo(
        XTranslate + size.width * 0.1551562,
        YTranslate + size.height * 0.8354414,
        XTranslate + size.width * 0.3098516,
        YTranslate + size.height,
        XTranslate + size.width * 0.5000000,
        YTranslate + size.height);
    path_0.cubicTo(
        XTranslate + size.width * 0.6901484,
        YTranslate + size.height,
        XTranslate + size.width * 0.8448438,
        YTranslate + size.height * 0.8354414,
        XTranslate + size.width * 0.8448438,
        YTranslate + size.height * 0.6331719);
    path_0.cubicTo(
        XTranslate + size.width * 0.8448418,
        YTranslate + size.height * 0.5501699,
        XTranslate + size.width * 0.7902070,
        YTranslate + size.height * 0.4227734,
        XTranslate + size.width * 0.6824492,
        YTranslate + size.height * 0.2545195);
    path_0.close();

    if (fillColor != null) {
      Paint paint0Fill = Paint()..style = PaintingStyle.fill;
      paint0Fill.color = fillColor!.withOpacity(1.0);
      canvas.drawPath(path_0, paint0Fill);
    }
    if (strokeColor != null) {
      Paint paint0Stroke = Paint()..style = PaintingStyle.stroke;
      paint0Stroke.color = strokeColor!.withOpacity(1.0);
      paint0Stroke.strokeWidth = strokeWidth;
      canvas.drawPath(path_0, paint0Stroke);
    }

    canvas.drawShadow(path_0, shadowColor, elevation, true);
    final textSpan = TextSpan(
      text: thumbText,
      style: thumbTextStyle,
    );
    final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
        textScaleFactor: size.width / 50);
    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    final offset =
        Offset(center.dx - textPainter.width / 2, center.dy + size.width / 1.8);
    textPainter.paint(canvas, offset);
  }
}
