import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  const Headline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 80,
          color: Colors.white,
          alignment: Alignment.center,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Nearest Restaurants",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "The best food close to you",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Text(
                "More",
                style: TextStyle(
                    color: Color(0xff15BE77), fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
