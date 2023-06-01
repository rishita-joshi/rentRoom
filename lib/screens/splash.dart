import 'dart:async';
import 'package:rent_a_room/routes.dart';
import 'package:rent_a_room/themes/ColorPalette.dart';
import 'package:flutter/material.dart';

import 'package:rent_a_room/screens/welcome.dart';

import '../config/routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 250),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => welcome())));
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ColorPalette.blackColor,
        child: Column(
          children: [
            InkWell(
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                child: Image.asset('assets/images/Splash/logo.png'),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, Routes.welComeRoute, (route) => false);

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => welcome()),
                // );
              },
            ),
            Spacer(),
            Spacer(),
            Text(
              'Rent a Room Online',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600),
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Text(
                  'Tenant HF RR \nVersion 2.0 \nDate 08/12/2022',
                  style: TextStyle(
                      color: Colors.white, fontSize: 15, fontFamily: 'Gilroy'),
                ),
              ],
            ),
            // Spacer(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
