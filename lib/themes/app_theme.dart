import 'package:flutter/material.dart';
import 'package:rent_a_room/themes/ColorPalette.dart';

abstract class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: ColorPalette.darkGrayColor,
            onPrimary: ColorPalette.whiteColor,
            secondary: ColorPalette.textColorLightGray,
            onSecondary: ColorPalette.textColorGray,
            error: ColorPalette.redColor,
            onError: ColorPalette.redColor,
            background: ColorPalette.darkGrayColor,
            onBackground: ColorPalette.textColorGray,
            surface: ColorPalette.containerColor,
            onSurface: ColorPalette.darkGrayColor),
        scaffoldBackgroundColor: ColorPalette.whiteColor,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorPalette.whiteColor,
          iconTheme:
              IconThemeData(size: 18.0, color: ColorPalette.darkGrayColor),
        ),
        iconTheme: IconThemeData(color: ColorPalette.darkGrayColor),
        iconButtonTheme: IconButtonThemeData(
            style: ButtonStyle(
                iconColor: MaterialStateProperty.all(ColorPalette.blackColor),
                iconSize: MaterialStatePropertyAll(12))),
        cardTheme: CardTheme(
            color: ColorPalette.whiteColor,
            elevation: 2,
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(15),
            // ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                width: 1.5,
                color: ColorPalette.whiteColor,
              ),
            )),
        buttonTheme: ButtonThemeData(
          buttonColor: ColorPalette.darkGrayColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
          elevation: MaterialStatePropertyAll(7.0),
          backgroundColor: MaterialStatePropertyAll(ColorPalette.darkGrayColor),
          minimumSize: MaterialStateProperty.all(Size(170.0, 50.0)),
        )),
        dropdownMenuTheme: DropdownMenuThemeData(
            textStyle: TextStyle(
          color: ColorPalette.darkGrayColor,
        )),
      );

  static ThemeData get darkTheme => ThemeData(
        scaffoldBackgroundColor: ColorPalette.darkGrayColor,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorPalette.darkGrayColor,
          iconTheme: IconThemeData(size: 18.0, color: ColorPalette.whiteColor),
        ),
        colorScheme: ColorScheme(
            brightness: Brightness.dark,
            primary: ColorPalette.whiteColor,
            onPrimary: ColorPalette.blackColor,
            secondary: ColorPalette.textColorLightGray,
            onSecondary: ColorPalette.textColorGray,
            error: ColorPalette.redColor,
            onError: ColorPalette.redColor,
            background: ColorPalette.lightBlueColor,
            onBackground: ColorPalette.textColorGray,
            surface: ColorPalette.darkGrayColor,
            onSurface: ColorPalette.darkGrayColor),
        iconTheme: IconThemeData(color: ColorPalette.whiteColor),
        cardTheme: CardTheme(
            color: ColorPalette.darkGrayColor,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                width: 1.5,
                color: ColorPalette.whiteColor,
              ),
            )),
        dropdownMenuTheme: DropdownMenuThemeData(
            inputDecorationTheme:
                InputDecorationTheme(iconColor: ColorPalette.textColorGray),
            textStyle: TextStyle(
              color: ColorPalette.whiteColor,
            )),
      );
}

 // textTheme: ThemeData.light().textTheme.copyWith(
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
