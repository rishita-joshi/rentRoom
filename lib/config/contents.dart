import 'package:flutter/material.dart';
import 'package:rent_a_room/screens/auth/login.dart';
import 'package:rent_a_room/screens/bottom%20nav/chat.dart';
import 'package:rent_a_room/screens/bottom%20nav/home.dart';
import 'package:rent_a_room/screens/bottom%20nav/persisentnav.dart';
import 'package:rent_a_room/screens/bottom%20nav/profile.dart';
import 'package:rent_a_room/screens/bottom%20nav/settings.dart';
import 'package:rent_a_room/screens/contact.dart';
import 'package:rent_a_room/screens/details.dart';
import 'package:rent_a_room/screens/filter.dart';
import 'package:rent_a_room/screens/privacy.dart';
import 'package:rent_a_room/screens/recommendations.dart';
import 'package:rent_a_room/screens/saved.dart';
import 'package:rent_a_room/screens/splash.dart';
import 'package:rent_a_room/screens/welcome.dart';

import '../screens/auth/registeration.dart';

class Contents extends StatelessWidget {
  const Contents({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Home",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Profile",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => settings()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Settings",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactPage()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Contact",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => details()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Details",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FilterPage()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Filter",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "login",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Privacy",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecommendationsPage()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "recommensation",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterPage()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "registration",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SavedPage()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "saved",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SplashScreen()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Splash",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => welcome()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "onboarding",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomNavBar()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "BottomNavBar",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),

TextButton(onPressed: (){
 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage()),
              );


}, child: Text("chat page"),)


        ]),
      ),
    );
  }
}
