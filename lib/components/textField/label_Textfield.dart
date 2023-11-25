import 'package:flutter/material.dart';

class LabelTextField extends StatelessWidget {
  const LabelTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: TextField(
            controller: TextEditingController(),
            decoration: const InputDecoration(
                labelText: 'Label Textfield',
                labelStyle: TextStyle(color: Colors.purple),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple))),
          ),
        ),
      ),
    );
  }
}
