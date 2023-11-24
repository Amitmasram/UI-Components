import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          backgroundColor: Colors.white,
          avatar: CircleAvatar(
            radius: 22,
            backgroundColor: Theme.of(context).primaryColor,
            child: const Text(
              'AB',
              style: TextStyle(fontSize: 8, color: Colors.white),
            ),
          ),
          label: const Text(
            'Aaron Burr',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
