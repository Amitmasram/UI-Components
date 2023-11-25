import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: ElevatedButton(
            onPressed: () async {
              // ignore: unused_local_variable
              final DateTimeRange? newDate = await showDateRangePicker(
                context: context,
                firstDate: DateTime(2017, 1),
                lastDate: DateTime(2022, 7),
                helpText: 'Select a date',
              );
            },
            child: const Text('Pick Date')),
      ),
    );
  }
}
