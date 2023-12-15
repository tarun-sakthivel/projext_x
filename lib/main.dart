import 'package:flutter/material.dart';
import 'package:project_x/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Report.dart';

SharedPreferences? prefs;

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  prefs = await SharedPreferences.getInstance();
  

  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Kbackgroundcolor,
      home: Scaffold(
        body: Report(),
      ),
    );
  }
}
