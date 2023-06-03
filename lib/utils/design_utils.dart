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

BoxBorder darkBoxBorderDecoration = Border.all(
  color: ColorPalette.whiteColor,
  width: 1,
);

BoxBorder lightBoxBorderDecoration = Border.all(
  color: ColorPalette.transparentColor,
  width: 1,
);

getTextFiledDecRadius(
  String hintText,
  BuildContext context,
) {
  return InputDecoration(
    border: const OutlineInputBorder(),
    fillColor: Colors.white,
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Theme.of(context).brightness == Brightness.dark
            ? ColorPalette.whiteColor
            : ColorPalette.blackColor,
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        width: 1.5,
        color: Theme.of(context).brightness == Brightness.dark
            ? ColorPalette.whiteColor
            : ColorPalette.darkGrayColor.withOpacity(0.1),
      ),
    ),
    hintText: hintText,
    hintStyle: TextStyle(
      color: ColorPalette.darkGrayColor,
      fontSize: 16,
    ),
  );
}

var lightElevatedButtonTheme = ElevatedButton.styleFrom(
  backgroundColor: ColorPalette.darkGrayColor,
  side: const BorderSide(
    width: 1.5,
    color: ColorPalette.transparentColor,
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(13.0),
  ),
);

var darkElevatedButtonTheme = ElevatedButton.styleFrom(
  backgroundColor: ColorPalette.transparentColor,
  side: const BorderSide(
    width: 1.5,
    color: ColorPalette.whiteColor,
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(13.0),
  ),
);

ShapeBorder lightCardBorderTheme = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15),
  side: BorderSide(
    width: 1.5,
    color: ColorPalette.blackColor.withOpacity(0.1),
  ),
);
ShapeBorder darkCardBorderTheme = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15),
  side: BorderSide(
    width: 1.5,
    color: ColorPalette.whiteColor,
  ),
);

var lightBoxFilterDecoration = BoxDecoration(
  color: ColorPalette.textColorLightGray.withOpacity(0.2),
  border: Border.all(
    color: ColorPalette.whiteColor,
    width: 1,
  ),
  borderRadius: BorderRadius.circular(6),
);

var darkBoxFilterDecoration = BoxDecoration(
  color: ColorPalette.darkGrayColor,
  border: Border.all(
    color: ColorPalette.whiteColor,
    width: 1,
  ),
  borderRadius: BorderRadius.circular(6),
);
