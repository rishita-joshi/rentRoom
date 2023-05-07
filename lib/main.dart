import 'package:flutter/material.dart';
import 'package:rent_a_room/screens/bottom%20nav/settings.dart';
import 'package:rent_a_room/screens/login.dart';
import 'package:rent_a_room/screens/registeration%20copy.dart';
import 'package:rent_a_room/screens/registeration.dart';
import 'package:rent_a_room/themes/theme.dart';

import 'screens/splash.dart';
import 'package:rent_a_room/contents.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Gilroy',
      ),
      home: SplashScreen(),
    );
  }
}
