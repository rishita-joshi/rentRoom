import 'package:flutter/material.dart';
import 'package:rent_a_room/themes/ColorPalette.dart';

class TextWidget extends StatelessWidget {
  TextWidget({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.07,
          margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            border: Border.all(color: ColorPalette.darkGrayColor, width: 3),
            borderRadius: BorderRadius.circular(5),
            shape: BoxShape.rectangle,
          ),
        ),
        Positioned(
          left: 50,
          top: 10,
          child: Container(
            padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
            color: Colors.white,
            child: Text(
              hintText,
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
        ),
        Positioned(
            top: 30,
            left: 40,
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: hintText,
                      errorBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none),
                )))
      ],
    );
  }
}
