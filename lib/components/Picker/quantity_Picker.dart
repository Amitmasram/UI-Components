import 'package:flutter/material.dart';

class QuantityPicker extends StatefulWidget {
  final String title;
  final int defaultValue;
  final Function(int) onChangeValue;

  const QuantityPicker(
      {required this.title,
      required this.onChangeValue,
      this.defaultValue = 2,
      Key? key})
      : assert(defaultValue >= 0),
        super(key: key);

  @override
  State<QuantityPicker> createState() => _QuantityPickerState();
}

class _QuantityPickerState extends State<QuantityPicker> {
  late int _count;
  @override
  void initState() {
    super.initState();
    _count = widget.defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(widget.title),
            const Spacer(),
            Text(_count.toString()),
            const SizedBox(
              width: 15,
            ),
            Row(
              children: [
                OutlinedButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(10, 10)),
                    ),
                    onPressed: () {
                      setState(() {
                        _count += 1;
                      });
                      widget.onChangeValue(_count);
                    },
                    child: const Text(
                      "+",
                      style: TextStyle(fontSize: 22),
                    )),
                OutlinedButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(10, 10)),
                    ),
                    onPressed: () {
                      if (_count > 0) {
                        setState(() {
                          _count -= 1;
                        });
                        widget.onChangeValue(_count);
                      }
                    },
                    child: const Text(
                      "-",
                      style: TextStyle(fontSize: 22),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
