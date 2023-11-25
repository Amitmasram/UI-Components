import 'package:flutter/material.dart';

import 'components/tapbar/tapbarandtapbarView.dart';

void main() {
  runApp(const MyApp());
}

// 🚀 Follow me on Instagram: https://www.instagram.com/skytech_28/
// 💻 Check out my GitHub: https://github.com/Amitmasram
// 👔 Connect with me on LinkedIn: https://www.linkedin.com/in/amit-masram/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: TabBarAndTabViews());
  }
}
