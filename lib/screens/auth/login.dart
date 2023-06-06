import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:rent_a_room/config/routes.dart';
import 'package:rent_a_room/screens/bottom%20nav/persisentnav.dart';

import '../../themes/ColorPalette.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ColumnSuper(innerDistance: -40, children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Splash/loginbg.png"),
                      fit: BoxFit.cover,
                      // fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter))),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: ColumnSuper(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RawMaterialButton(
                      elevation: 0.0,
                      fillColor: Colors.white,
                      child: SvgPicture.asset("assets/images/facebook.svg"),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                      onPressed: () async {},
                      // try {
                      //   final LoginResult result =
                      //       await FacebookAuth.instance.login();

                      //   if (result.status == LoginStatus.success) {
                      //     final AccessToken accessToken = result.accessToken!;
                      //     // Use the accessToken to sign-in or get user info
                      //     print('Facebook login successful!');
                      //   } else {
                      //     print(result.status);
                      //   }
                      // } catch (e) {
                      //   print(e);
                      // }
                      // },
                    ),
                    SizedBox(height: 16.0),
                    RawMaterialButton(
                      elevation: 0.0,
                      fillColor: Colors.white,
                      child: SvgPicture.asset("assets/images/google.svg"),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                      onPressed: () async {
                        final GoogleSignIn googleSignIn = GoogleSignIn();
                        final GoogleSignInAccount? googleSignInAccount =
                            await googleSignIn.signIn();

                        if (googleSignInAccount != null) {
                          final GoogleSignInAuthentication
                              googleSignInAuthentication =
                              await googleSignInAccount.authentication;

                          final AuthCredential credential =
                              GoogleAuthProvider.credential(
                            accessToken: googleSignInAuthentication.accessToken,
                            idToken: googleSignInAuthentication.idToken,
                          );

                          final UserCredential userCredential =
                              await FirebaseAuth.instance
                                  .signInWithCredential(credential);
                          // Use the userCredential to sign-in or get user info
                          print('Google login successful!');
                        }
                      },
                    ),
                    SizedBox(height: 16.0),
                    RawMaterialButton(
                      elevation: 0.0,
                      fillColor: Colors.black,
                      child: SvgPicture.asset("assets/images/apple.svg"),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                      onPressed: () async {
                        final GoogleSignIn googleSignIn = GoogleSignIn();
                        final GoogleSignInAccount? googleSignInAccount =
                            await googleSignIn.signIn();

                        if (googleSignInAccount != null) {
                          final GoogleSignInAuthentication
                              googleSignInAuthentication =
                              await googleSignInAccount.authentication;

                          final AuthCredential credential =
                              GoogleAuthProvider.credential(
                            accessToken: googleSignInAuthentication.accessToken,
                            idToken: googleSignInAuthentication.idToken,
                          );

                          final UserCredential userCredential =
                              await FirebaseAuth.instance
                                  .signInWithCredential(credential);
                          // Use the userCredential to sign-in or get user info
                          print('Google login successful!');
                        }
                      },
                    ),
                    // CircularSignInButton(
                    //   onPressed: () async {
                    //     if (await FlutterAppleSignIn.isAvailable()) {
                    //       final AuthorizationResult result = await FlutterAppleSignIn.requestAuthorization();

                    //       if (result.status == AuthorizationStatus.authorized) {
                    //         final AppleIdCredential appleIdCredential = result.credential;

                    //         final OAuthProvider oAuthProvider = OAuthProvider('apple.com');
                    //         final AuthCredential credential = oAuthProvider.credential(
                    //           idToken: String.fromCharCodes(appleIdCredential.identityToken!),
                    //           accessToken: String.fromCharCodes(appleIdCredential.authorizationCode!),
                    //         );

                    //         final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
                    //         // Use the userCredential to sign-in or get user info
                    //         print('Apple login successful!');
                    //       } else {
                    //         print(result.status);
                    //       }
                    //     }
                    //   },
                    //   splashColor: Colors.white,
                    //   backgroundColor: Colors.black,
                    //   text: 'Sign in with Apple',
                    //   textColor: Colors.white,
                    //   borderRadius: 25.0,
                    //   borderWidth: 1.0,
                    //   elevation: 0.0,
                    //   highlightElevation: 0.0
                    // )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                      color: ColorPalette.blackColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: RawMaterialButton(
                    // elevation: 2.0,
                    // fillColor: ColorPalette.blackColor,
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Gilroy',
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    padding: EdgeInsets.all(15.0),
                    // shape: RoundedRectangleBorder(),
                    onPressed: () {
                      BottomNavBar().launch(context);
                    },
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      'Existing Member? ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gilroy'),
                    ),
                    InkWell(
                      child: Text(
                        'Signup',
                        style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          fontFamily: 'Gilroy',
                          color: Color(0xff454545),
                          fontWeight: FontWeight.bold,
                          // height: 22
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
          )
        ]),
      ),
    ));
  }
}
