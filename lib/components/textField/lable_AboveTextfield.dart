import 'package:flutter/material.dart';

class LabelAboveTextField extends StatelessWidget {
  const LabelAboveTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Email'),
            TextField(
              controller: TextEditingController(),
              decoration: const InputDecoration(
                  hintText: 'Email',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple))),
            ),
          ],
        ),
      ),
    );
  }
}
