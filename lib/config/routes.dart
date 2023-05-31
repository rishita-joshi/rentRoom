
import 'package:flutter/material.dart';
import 'package:rent_a_room/screens/auth/login.dart';
import 'package:rent_a_room/screens/bottom%20nav/chat.dart';
import 'package:rent_a_room/screens/bottom%20nav/persisentnav.dart';
import 'package:rent_a_room/screens/bottom%20nav/profile.dart';
import 'package:rent_a_room/screens/bottom%20nav/settings.dart';
import 'package:rent_a_room/screens/details.dart';
import 'package:rent_a_room/screens/filter.dart';
import 'package:rent_a_room/screens/location.dart';
import 'package:rent_a_room/screens/privacy.dart';
import 'package:rent_a_room/screens/splash.dart';
import 'package:rent_a_room/screens/welcome.dart';

import '../screens/auth/registeration.dart';

class Routes{

static final String mainRoute = "/";
static final String welComeRoute = "/welcome";
static final String homeRoute = "/home";
static final String loginRoute = "/login";
static final String registerRoute = "/register";
static final String profileRoute = "/profile";
static final String settingRoute = "/settings";
static final String locationRoute = "/location";
static final String privacyRoute = "/privacy";
static final String chatRoute = "/chat";
static final String bottomBarRoute = "/bottomBar";
static final String filterRoute = "/filter";
static final String welcomeRoute = "/welcome";
static final String pageDetailsRoute = "/pageDetailsRoute";




static Map<String, Widget Function(BuildContext)> globalRoutes = {
    //homeRoute: (context) => HomeScreen()
    mainRoute: (context) => SplashScreen(),
    loginRoute: (context) => LoginPage(),
    registerRoute: (context) => RegisterPage(),
    profileRoute: (context) => profile(),
    settingRoute :(context) =>settings(),
    locationRoute :(context)=>LocationPermissionPage(),
    privacyRoute :(context)=>PrivacyPolicyPage(),
    chatRoute :(context)=>ChatPage(),
    bottomBarRoute :(context)=> BottomNavBar(),
    filterRoute :(context)=>FilterPage(),
    welcomeRoute :(context)=>welcome(),
    pageDetailsRoute :(context) => details(),
  


};



}