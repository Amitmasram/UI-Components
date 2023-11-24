import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges; // Import with a prefix

class CustomBadge extends StatelessWidget {
  const CustomBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: badges.Badge(
          // Use the prefix
          badgeContent: Text('3'),
          child: Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
