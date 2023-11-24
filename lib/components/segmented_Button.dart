import 'package:flutter/material.dart';

enum Sizes {
  extraSmall,
  small,
  medium,
  large,
  extraLarge,
}

class SingleSegmentedButton extends StatefulWidget {
  const SingleSegmentedButton({super.key});

  @override
  State<SingleSegmentedButton> createState() => _SingleSegmentedButtonState();
}

class _SingleSegmentedButtonState extends State<SingleSegmentedButton> {
  // ignore: non_constant_identifier_names
  Sizes SizesView = Sizes.extraSmall;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Segmented Button',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: SegmentedButton<Sizes>(
          segments: const <ButtonSegment<Sizes>>[
            ButtonSegment<Sizes>(value: Sizes.extraSmall, label: Text('H')),
            ButtonSegment<Sizes>(value: Sizes.small, label: Text('E')),
            ButtonSegment<Sizes>(value: Sizes.medium, label: Text('L')),
            ButtonSegment<Sizes>(value: Sizes.large, label: Text('L')),
            ButtonSegment<Sizes>(
              value: Sizes.extraLarge,
              label: Text('O'),
            ),
          ],
          selected: <Sizes>{SizesView},
          onSelectionChanged: (Set<Sizes> newSelection) {
            setState(() {
              SizesView = newSelection.first;
            });
          },
        ),
      ),
    );
  }
}
