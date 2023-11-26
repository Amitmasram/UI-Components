import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  const GridCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, bottom: 15),
        child: Center(
          child: Container(
            width: 150,
            height: 170,
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.5),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(10, 20),
                    blurRadius: 10,
                    spreadRadius: 0,
                    color: Colors.grey.withOpacity(.05)),
              ],
            ),
            child: Column(
              children: [
                Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33',
                    height: 70,
                    fit: BoxFit.cover),
                const Spacer(),
                const Text('Vegan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '8 min away',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 12),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
