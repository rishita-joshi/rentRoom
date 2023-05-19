
import 'package:flutter/material.dart';
import 'package:rent_a_room/themes/myColors.dart';

abstract class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        scaffoldBackgroundColor: ColorPalette.whiteColor,
appBarTheme: AppBarTheme(backgroundColor: ColorPalette.whiteColor ,
),    
iconTheme: IconThemeData(color: ColorPalette.darkGrayColor),    
//iconButtonTheme: IconButtonThemeData(style: ButtonStyle(iconColor:  MaterialStateColor  ColorPalette.darkGrayColor)),
cardColor: Colors.pink,
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
              caption: const TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
      );

  static ThemeData get darkTheme => ThemeData(
        scaffoldBackgroundColor: ColorPalette.darkGrayColor,
        appBarTheme: AppBarTheme(backgroundColor: ColorPalette.darkGrayColor ,
),
iconTheme: IconThemeData(color: ColorPalette.whiteColor),   
cardColor: Colors.amber,
        textTheme: ThemeData.dark().textTheme.copyWith(
              bodyText1: const TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
              caption: const TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
      );
}