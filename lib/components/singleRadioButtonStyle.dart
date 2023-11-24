// ignore: file_names
import 'package:flutter/material.dart';

enum SingingCharacter { option1, option2 }

class SingleSelectRadioButton extends StatefulWidget {
  const SingleSelectRadioButton({Key? key}) : super(key: key);

  @override
  State<SingleSelectRadioButton> createState() =>
      _SingleSelectRadioButtonState();
}

class _SingleSelectRadioButtonState extends State<SingleSelectRadioButton> {
  SingingCharacter? _character = SingingCharacter.option1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            title: const Text('Option 1'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.option1,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Option 2'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.option2,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
