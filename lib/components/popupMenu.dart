// ignore: file_names
import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class CustomPopupMenu extends StatefulWidget {
  const CustomPopupMenu({super.key});

  @override
  State<CustomPopupMenu> createState() => _CustomPopupMenuState();
}

class _CustomPopupMenuState extends State<CustomPopupMenu> {
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      initialValue: selectedMenu,
      onSelected: (SampleItem item) {
        setState(() {
          selectedMenu = item;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemOne,
          child: Text('Item 1'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemTwo,
          child: Text('Item 2'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemThree,
          child: Text('Item 3'),
        ),
      ],
    );
  }
}
