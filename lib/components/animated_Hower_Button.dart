import 'package:flutter/material.dart';

class CustomOutlineButton extends StatefulWidget {
  final String text;
  final Function() onTap;
  final double? width;
  final Color? textColor;
  const CustomOutlineButton({
    Key? key,
    this.width,
    this.textColor,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _CustomOutlineButtonState createState() => _CustomOutlineButtonState();
}

class _CustomOutlineButtonState extends State<CustomOutlineButton> {
  double _animatedWidth = 0.0;
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Stack(
          children: [
            if (!isHover)
              Container(
                height: 52,
                width: widget.width ?? 177,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 52,
              width: _animatedWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.purple),
            ),
            InkWell(
              onHover: (value) {
                setState(() {
                  isHover = !isHover;
                  _animatedWidth = value ? widget.width ?? 177 : 0.0;
                });
              },
              onTap: () {
                setState(() => _animatedWidth = 250);
                widget.onTap();
              },
              child: SizedBox(
                height: 52,
                width: widget.width ?? 177,
                child: Center(
                  child: Text(
                    widget.text.toUpperCase(),
                    style: TextStyle(
                      color: isHover
                          ? Colors.white
                          : widget.textColor ?? Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
