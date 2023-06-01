import 'package:flutter/material.dart';
import 'package:rent_a_room/themes/ColorPalette.dart';

var darkBoxDecoration = BoxDecoration(
  color: ColorPalette.darkGrayColor,
  border: Border.all(
    color: ColorPalette.whiteColor,
    width: 1,
  ), //Border.all
  borderRadius: BorderRadius.circular(15.0),
);

var lightBoxDecoration = BoxDecoration(color: ColorPalette.containerColor);
