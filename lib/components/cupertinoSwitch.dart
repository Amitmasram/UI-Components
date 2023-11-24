// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: _switchValue,
      activeColor: Theme.of(context).primaryColor,
      onChanged: (value) {
        setState(() {
          _switchValue = value;
        });
      },
    );
  }
}
