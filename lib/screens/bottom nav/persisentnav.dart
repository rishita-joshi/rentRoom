import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:rent_a_room/screens/bottom%20nav/chat.dart';
import 'package:rent_a_room/screens/bottom%20nav/home.dart';
import 'package:rent_a_room/screens/bottom%20nav/profile.dart';
import 'package:rent_a_room/screens/bottom%20nav/settings.dart';

import '../../themes/ColorPalette.dart';
import '../auth/registeration.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;
    controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        HomePage(),
        settings(),
        RegisterPage(),
        ChatPage(),
        profile(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/Splash/homeBtm.png"),
            ),
            iconSize: 18,
            activeColorPrimary: Color(0xff44C1F0),
            inactiveColorPrimary: Theme.of(context).colorScheme.primary),
        PersistentBottomNavBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/Splash/settingsBtm.png"),
            ),
            iconSize: 18,

            // title: ("Explore"),
            activeColorPrimary: Color(0xff44C1F0),
            inactiveColorPrimary: Theme.of(context).colorScheme.primary),
        PersistentBottomNavBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/Splash/addBtm.png"),
            ),
            iconSize: 18,
            activeColorPrimary: Color(0xff44C1F0),
            inactiveColorPrimary: Theme.of(context).colorScheme.primary),
        PersistentBottomNavBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/Splash/chatBtm.png"),
              // color: ColorPalette.blackColor,
            ),
            iconSize: 18,

            // title: ("Inbox"),
            activeColorPrimary: Color(0xff44C1F0),
            inactiveColorPrimary: Theme.of(context).colorScheme.primary),
        PersistentBottomNavBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/Splash/profileBtm.png"),
              // color: ColorPalette.blackColor,
            ),
            iconSize: 18,

            // title: ("Shop"),
            activeColorPrimary: Color(0xff44C1F0),
            inactiveColorPrimary: Theme.of(context).colorScheme.primary),
      ];
    }

    return PersistentTabView(
      context,
      navBarHeight: 70,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor:
          Theme.of(context).scaffoldBackgroundColor, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        boxShadow: [BoxShadow(blurRadius: 5.0)],
        // borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.simple, // Choose the nav bar style with this property.
    );
  }
}
