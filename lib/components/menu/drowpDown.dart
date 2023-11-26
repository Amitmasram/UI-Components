import 'package:flutter/material.dart';

class DropDownMenuFb1 extends StatelessWidget {
  final Color color;
  final Widget icon;
  const DropDownMenuFb1(
      {this.color = Colors.white,
      this.icon = const Icon(
        Icons.more_vert,
        color: Color(0xff4338CA),
      ),
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: PopupMenuButton(
          color: color,
          icon: icon,
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            const PopupMenuItem(
              child: ListTile(
                leading: Icon(Icons.add, color: Color(0xff4338CA)),
                title: Text('Add video'),
              ),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem(child: Text('Settings')),
            const PopupMenuItem(child: Text('More Information')),
          ],
        ),
      ),
    );
  }
}
