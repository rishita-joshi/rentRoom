import 'package:flutter/material.dart';
import 'package:rent_a_room/screens/bottom%20nav/chat.dart';
import 'package:rent_a_room/screens/bottom%20nav/home.dart';
import 'package:rent_a_room/screens/bottom%20nav/profile.dart';
import 'package:rent_a_room/screens/bottom%20nav/settings.dart';
import 'package:rent_a_room/screens/registeration.dart';
import 'package:rent_a_room/screens/splash.dart';

import '../../themes/myColors.dart';

class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    settings(),
    RegisterPage(),
    chat(),
    profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 20.0)]),
          child: BottomNavigationBar(
            iconSize: 40,
            unselectedIconTheme: IconThemeData(color: AppColors.pri, size: 25),
            selectedIconTheme: IconThemeData(color: AppColors.pri, size: 35),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/Splash/homeBtm.png"),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/Splash/settingsBtm.png"),
                ),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/Splash/addBtm.png"),
                ),
                label: 'School',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/Splash/chatBtm.png"),
                ),
                label: 'School',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/Splash/profileBtm.png"),
                ),
                label: 'School',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
