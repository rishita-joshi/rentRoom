import 'package:flutter/material.dart';
import 'package:rent_a_room/themes/ColorPalette.dart';

class LoginTextForm extends StatelessWidget {
  const LoginTextForm(
      {Key? key,
      required this.hintText,
      this.isSufix = false,
      this.isPassword = false,
      this.callback,
      this.icon,
      required this.controller})
      : super(key: key);

  final String hintText;
  final bool? isSufix;
  final Function? callback;
  final IconData? icon;
  final bool isPassword;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: TextFormField(
        controller: controller,
        style: TextStyle(
          fontSize: 24,
          color: Colors.blue,
          fontWeight: FontWeight.w600,
        ),
        onChanged: (value) {
          //    setState(() {
          //      userInput.text = value.toString();
          //    });
        },
        decoration: InputDecoration(
          focusColor: Colors.white,
          //add prefix icon
          prefixIcon: Icon(
            Icons.person_outline_rounded,
            color: Colors.grey,
          ),
          errorText: "Error",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          fillColor: Colors.grey,

          hintText: "Email/Mobile",

          //make hint text
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),
          labelText: 'Email/Mobile',
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
