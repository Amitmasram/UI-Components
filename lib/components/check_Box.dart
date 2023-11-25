import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: Container(
            width: 24.0,
            height: 24.0,
            decoration: BoxDecoration(
              color: isChecked ? Colors.purple : null,
              border: Border.all(
                color: isChecked ? Colors.purple : Colors.grey,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: isChecked
                ? Icon(
                    Icons.check,
                    size: 15,
                    color: Colors.white,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
