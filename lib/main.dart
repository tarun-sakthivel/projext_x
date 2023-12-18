import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:project_x/Home.dart';
import 'package:project_x/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
SharedPreferences? prefs;
late List<CameraDescription> cameras;
Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();

  prefs = await SharedPreferences.getInstance();
  cameras = await availableCameras();

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
        body: Home(),
      ),
    );
  }
}
