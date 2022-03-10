import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:myhostelapp/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color _primaryColor = HexColor('#faef19');
  Color _accentColor = HexColor('#ffbd2e');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Hostel App',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(title: 'My Hostel App'),
    );
  }
}
