import 'package:flutter/material.dart';
import 'package:project_x/constants.dart';
import 'Loginpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Kbackgroundcolor,
      home: const Scaffold(
        body: Loginpage(),
      ),
    );
  }
}
