import 'package:flutter/material.dart';
import 'package:rent_a_room/themes/myColors.dart';

abstract class AppTheme {
  static ThemeData get lightTheme => ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: ColorPalette.darkGrayColor,
          onPrimary: ColorPalette.whiteColor,
          secondary: ColorPalette.lightBlueColor,
          onSecondary: ColorPalette.textColorGray,
          error: ColorPalette.redColor,
          onError: ColorPalette.redColor,
          background: ColorPalette.redColor,
          onBackground: ColorPalette.textColorGray,
          surface: ColorPalette.darkGrayColor,
          onSurface: ColorPalette.darkGrayColor),
      scaffoldBackgroundColor: ColorPalette.whiteColor,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorPalette.whiteColor,
      ),
      iconTheme: IconThemeData(color: ColorPalette.darkGrayColor),
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
              iconColor: MaterialStateProperty.all(ColorPalette.blackColor),
              iconSize: MaterialStatePropertyAll(15))),
      cardColor: Colors.white,
      buttonTheme: ButtonThemeData(
        buttonColor: ColorPalette.darkGrayColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        elevation: MaterialStatePropertyAll(10.0),
        backgroundColor: MaterialStatePropertyAll(ColorPalette.darkGrayColor),
        minimumSize: MaterialStateProperty.all(Size(170.0, 50.0)),
//alignment: Alignment.bottomCenter,
      )));

  static ThemeData get darkTheme => ThemeData(
        scaffoldBackgroundColor: ColorPalette.darkGrayColor,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorPalette.darkGrayColor,
        ),
        iconTheme: IconThemeData(color: ColorPalette.whiteColor),
        cardColor: Colors.amber,
      );
} // textTheme: ThemeData.light().textTheme.copyWith(
        //       displayLarge: const TextStyle(
        //         fontSize: 20,
        //         color: ColorPalette.blackColor,
        //         fontWeight:  FontWeight.bold
        //       ),
        //       displaySmall: const TextStyle(
        //         fontStyle: FontStyle.normal,
        //         fontSize: 18,
        //         color: ColorPalette.blackColor,
        //       ),
        //       displayMedium: const TextStyle(
        //         fontStyle: FontStyle.normal,
        //         fontSize: 12,
        //         color:  ColorPalette.textColorGray,
        //       ),

        //       titleSmall: TextStyle(color: FontStyles.fontFamilyBold)
        //     ),