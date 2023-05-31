import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rent_a_room/themes/ColorPalette.dart';

class FontAsset {
  static const String poppins = "Poppins";

  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;
}

class FontStyles {
  static const String fontFamilyBold = "Poppins-Bold";
  static const String fontFamilyMedium = "Poppins-Medium";
  static const String fontFamilySemiBold = "Poppins-SemiBold";
  static const String fontFamilyRegular = "Poppins-Regular";
  static const String fontFamilyItalic = "Poppins-Italic";

  static TextStyle textStyleRegular(
          {Color color = ColorPalette.blackColor,
          double? fontSize = 19,
          FontWeight? fontWeight = FontWeight.normal,
          fontFamily = fontFamilyBold}) =>
      TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamilyRegular);

  static TextStyle textStyleMedium(
          {Color color = ColorPalette.blackColor,
          double? fontSize = 19,
          fontFamily = fontFamilyMedium}) =>
      TextStyle(color: color, fontSize: fontSize, fontFamily: fontFamilyMedium);

  static TextStyle textStyleBold(
          {Color color = ColorPalette.blackColor,
          double? fontSize = 19,
          FontWeight? fontWeight = FontWeight.bold,
          fontFamily = fontFamilyRegular}) =>
      TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamilyBold);

  static TextStyle textStyleSemiBold(
          {Color color = ColorPalette.blackColor,
          double? fontSize = 16}) =>
      TextStyle(
          color: color, fontSize: fontSize, fontFamily: fontFamilySemiBold);

  static TextStyle textStyleCustom(
          {Color color = ColorPalette.blackColor,
          double? fontSize = 12,
          FontWeight? fontWeight = FontWeight.normal,
          String? fontFamily = fontFamilyRegular}) =>
      TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily);
}
