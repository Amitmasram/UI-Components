import 'package:flutter/material.dart';

class ActiveProfileAvatar extends StatelessWidget {
  const ActiveProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
                        ),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                    color: Colors.green, shape: BoxShape.circle),
              )
            ],
          ),
        ),
      ),
    );
  }
}
