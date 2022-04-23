import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:myhostelapp/commom/google_sign_in.dart';
import 'package:myhostelapp/pages/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  Color _primaryColor = HexColor('#faef19');
  Color _accentColor = HexColor('#ffbd2e');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          title: 'My Hostel App',
          theme: ThemeData(
            primaryColor: _primaryColor,
            accentColor: _accentColor,
            scaffoldBackgroundColor: Colors.grey.shade100,
            primarySwatch: Colors.grey,
          ),
          home: SplashScreen(title: 'My Hostel App'),
        ),
      );
}
