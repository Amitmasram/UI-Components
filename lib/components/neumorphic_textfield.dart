import 'package:flutter/material.dart';

class NeumorphicTextField extends StatefulWidget {
  const NeumorphicTextField({super.key});

  @override
  State<NeumorphicTextField> createState() => _NeumorphicTextFieldState();
}

class _NeumorphicTextFieldState extends State<NeumorphicTextField> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: const Color(0XFFdae1eb),
                borderRadius: BorderRadius.circular(200.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 6, // soften the shadow
                    spreadRadius: 3, //end the shadow
                    offset: Offset(
                      6.0, // Move to right 10  horizontally
                      2.0, // Move to bottom 10 Vertically
                    ),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    blurRadius: 6, // soften the shadow
                    spreadRadius: 3, //end the shadow
                    offset: Offset(
                      -6.0, // Move to right 10  horizontally
                      -2.0, // Move to bottom 10 Vertically
                    ),
                  ),
                ]),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter a search term',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
