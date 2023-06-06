import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:rent_a_room/bloc/theme_cubit.dart';
import 'package:rent_a_room/components/custom_draw.dart';
import 'package:rent_a_room/components/textformfield_widget.dart';
import 'package:rent_a_room/config/font_asset.dart';
import 'package:rent_a_room/screens/bottom%20nav/home.dart';
import 'package:rent_a_room/themes/ColorPalette.dart';
import 'package:rent_a_room/utils/image_asset.dart';
import 'package:rent_a_room/widget/image_widget.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var loginController = TextEditingController();

  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/Splash/loginbg.png"),
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: ColorPalette.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 8.0, bottom: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                changeIsLogin();
                              },
                              child: Text(
                                "Login",
                                style: isLogin
                                    ? FontStyles.textStyleSemiBold(
                                        fontSize: 23, isUnderLine: true)
                                    : FontStyles.textStyleSemiBold(
                                        fontSize: 23,
                                      ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                            ),
                            InkWell(
                              onTap: () {
                                changeIsSignUp();
                              },
                              child: Text(
                                "SignUp",
                                style: FontStyles.textStyleSemiBold(
                                    fontSize: 23, isUnderLine: true),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextWidget(hintText: "Enter Email"),
                      TextWidget(hintText: "Enter Password"),
                      isLogin
                          ? SizedBox()
                          : TextWidget(hintText: "Confirm Password"),
                      isLogin
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Switch(
                                    onChanged: toggleSwitch,
                                    value: true,
                                    activeColor: ColorPalette.darkGrayColor,
                                    activeTrackColor: Colors.yellow,
                                    inactiveThumbColor: Colors.redAccent,
                                    inactiveTrackColor: Colors.orange,
                                  ),
                                  Text(
                                    'Remember Me',
                                    style: FontStyles.textStyleRegular(
                                        fontSize: 16, isUnderLine: false),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    'Forgot Password',
                                    style: FontStyles.textStyleRegular(
                                        fontSize: 16, isUnderLine: true),
                                  ),
                                ],
                              ),
                            )
                          : SizedBox(),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: isLogin
                                ? ElevatedButton(
                                    onPressed: () {
                                      HomePage().launch(context);
                                    },
                                    child: Text(
                                      "Login",
                                      style: FontStyles.textStyleRegular(
                                          fontSize: 19.0,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary),
                                    ))
                                : ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "NEXT",
                                      style: FontStyles.textStyleRegular(
                                          fontSize: 19.0,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary),
                                    ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, left: 10.0, right: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              isLogin
                                  ? "Don’t have an Account?"
                                  : "Already have an Account?",
                              style: FontStyles.textStyleRegular(fontSize: 19),
                            ),
                            Text(
                              isLogin ? "Register Here" : "Login Here",
                              style: isLogin
                                  ? FontStyles.textStyleBold(
                                      fontSize: 19, isUnderLine: false)
                                  : FontStyles.textStyleBold(
                                      fontSize: 19, isUnderLine: true),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 40,
                        thickness: 1,
                        color: ColorPalette.darkGrayColor,
                      ),
                      socialLogin(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  socialLogin() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedTintImageWidget(
          imageAssetPath: ImageAsset.icAppleLogo,
          height: 40,
          width: 50,
        ),
        SizedTintImageWidget(
          imageAssetPath: ImageAsset.icFbLogo,
          height: 40,
          width: 50,
        ),
        SizedTintImageWidget(
          imageAssetPath: ImageAsset.icGoogleLogo,
          height: 40,
          width: 50,
        ),
      ],
    );
  }

  void toggleSwitch(bool value) {}

  void changeIsLogin() {
    setState(() {
      isLogin = true;
    });
  }

  void changeIsSignUp() {
    setState(() {
      isLogin = false;
    });
  }
}
