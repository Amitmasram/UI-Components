import 'package:flutter/material.dart';

enum Sizes {
  extraSmall,
  small,
  medium,
  large,
}

class SingleSegmentedButton extends StatefulWidget {
  const SingleSegmentedButton({super.key});

  @override
  State<SingleSegmentedButton> createState() => _SingleSegmentedButtonState();
}

class _SingleSegmentedButtonState extends State<SingleSegmentedButton> {
  Sizes SizesView = Sizes.extraSmall;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Sizes>(
      segments: const <ButtonSegment<Sizes>>[
        ButtonSegment<Sizes>(value: Sizes.extraSmall, label: Text('X')),
        ButtonSegment<Sizes>(value: Sizes.small, label: Text('S')),
        ButtonSegment<Sizes>(value: Sizes.medium, label: Text('M')),
        ButtonSegment<Sizes>(
          value: Sizes.large,
          label: Text('L'),
        ),
      ],
      selected: <Sizes>{SizesView},
      onSelectionChanged: (Set<Sizes> newSelection) {
        setState(() {
          SizesView = newSelection.first;
        });
      },
    );
  }
}
