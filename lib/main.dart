
import 'package:bmi_application/screens_pages/homepagescreen.dart';
import 'package:bmi_application/things/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI APP',
      theme: lightTheme,
    
      home: const Homepagescreen(),
    );
  }
}
