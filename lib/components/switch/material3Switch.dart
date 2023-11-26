import 'package:flutter/material.dart';

class CustomSwitchMaterial extends StatefulWidget {
  const CustomSwitchMaterial({super.key});

  @override
  State<CustomSwitchMaterial> createState() => _CustomSwitchMaterialState();
}

class _CustomSwitchMaterialState extends State<CustomSwitchMaterial> {
  bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Theme(
            data: ThemeData(useMaterial3: true),
            child: Switch(
              value: isSwitchOn,
              activeColor: Colors.purple,
              onChanged: (value) {
                setState(() {
                  isSwitchOn = value;
                });
              },
            )),
      ),
    );
  }
}
