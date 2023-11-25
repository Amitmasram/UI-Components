import 'dart:ui';

import 'package:flutter/material.dart';

class GlassmorphismCreditCard extends StatefulWidget {
  const GlassmorphismCreditCard({super.key});

  @override
  _GlassmorphismCreditCardState createState() =>
      _GlassmorphismCreditCardState();
}

class _GlassmorphismCreditCardState extends State<GlassmorphismCreditCard> {
  late double _height;
  late double _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Material(
      color: Colors.black,
      child: Center(
        child: GlassmorphicContainer(
          height: _height * 0.3,
          width: _width * 0.9,
          borderRadius: 15,
          blur: 15,
          // alignment: Alignment.center,
          border: 2,
          linearGradient: LinearGradient(colors: [
            Colors.white.withOpacity(0.2),
            Colors.white38.withOpacity(0.2)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderGradient: LinearGradient(colors: [
            Colors.white24.withOpacity(0.2),
            Colors.white70.withOpacity(0.2)
          ]),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 16,
                spreadRadius: 16,
                color: Colors.black.withOpacity(0.1),
              )
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20.0,
                  sigmaY: 20.0,
                ),
                child: Container(
                    height: _height * 0.7,
                    width: _width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                          width: 1.5,
                          color: Colors.white.withOpacity(0.2),
                        )),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('ICICI BANK',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.75))),
                              Icon(
                                Icons.credit_card_sharp,
                                color: Colors.white.withOpacity(0.75),
                              )
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('VISA',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.75))),
                              Text('09/27',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.75))),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('3648 3847 9283 1482',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.75))),
                            ],
                          )
                        ],
                      ),
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GlassmorphicContainer extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  final double blur;
  final double border;
  final LinearGradient linearGradient;
  final LinearGradient borderGradient;
  final Widget child;

  GlassmorphicContainer({
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.blur,
    required this.border,
    required this.linearGradient,
    required this.borderGradient,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        gradient: linearGradient,
        border: Border.all(
          width: border,
          // gradient: borderGradient,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: blur,
            spreadRadius: blur,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: child,
    );
  }
}
