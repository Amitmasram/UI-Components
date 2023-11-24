import 'package:flutter/material.dart';

class CustomLikeButton extends StatefulWidget {
  const CustomLikeButton({Key? key}) : super(key: key);

  @override
  _CustomLikeButtonState createState() => _CustomLikeButtonState();
}

class _CustomLikeButtonState extends State<CustomLikeButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _animation =
        Tween<double>(begin: 1.0, end: 1.2).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleLike() {
    setState(() {
      isLiked = !isLiked;
      if (isLiked) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _toggleLike,
          child: ScaleTransition(
            scale: _animation, // Use _animation instead of _animation@713080161
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isLiked ? Colors.red : Colors.grey,
              ),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
