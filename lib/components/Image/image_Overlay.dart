import 'package:flutter/material.dart';

class ImageOverlayCard extends StatelessWidget {
  const ImageOverlayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1557053910-d9eadeed1c58?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW4lMjBwb3J0cmFpdHxlbnwwfHwwfHw%3D&w=1000&q=80",
                  ),
                  fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black26, borderRadius: BorderRadius.circular(10)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Title',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  'Your description goes down here',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
