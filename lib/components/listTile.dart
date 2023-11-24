// ignore: file_names
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: const ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 65, 33, 243),
            ),
            title: Text('John Doe',
                style: TextStyle(fontSize: 14, color: Colors.black)),
            subtitle: Text('Hello',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
            trailing: Text('12:45 am', style: TextStyle(color: Colors.black)),
          ),
        ),
      ),
    );
  }
}
