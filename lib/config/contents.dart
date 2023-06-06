import 'package:flutter/material.dart';
import 'package:rent_a_room/config/routes.dart';
import 'package:rent_a_room/payment_gatway/paypalPayment.dart';
import 'package:rent_a_room/screens/auth/login.dart';
import 'package:rent_a_room/screens/auth/login_page.dart';
import 'package:rent_a_room/screens/bottom%20nav/chat.dart';
import 'package:rent_a_room/screens/bottom%20nav/home.dart';
import 'package:rent_a_room/screens/bottom%20nav/persisentnav.dart';
import 'package:rent_a_room/screens/bottom%20nav/profile.dart';
import 'package:rent_a_room/screens/bottom%20nav/settings.dart';
import 'package:rent_a_room/screens/contact.dart';
import 'package:rent_a_room/screens/details.dart';
import 'package:rent_a_room/screens/filter.dart';
import 'package:rent_a_room/screens/privacy.dart';
import 'package:rent_a_room/screens/recommendations.dart';
import 'package:rent_a_room/screens/saved.dart';
import 'package:rent_a_room/screens/splash.dart';
import 'package:rent_a_room/screens/welcome.dart';
import 'package:nb_utils/nb_utils.dart';
import '../screens/auth/registeration.dart';

class Contents extends StatelessWidget {
  const Contents({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          InkWell(
            onTap: () {
              HomePage().launch(context);
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => HomePage()),
              //     );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Home",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              profile().launch(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Profile",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              settings().launch(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Settings",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ContactPage().launch(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Contact",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              details().launch(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Details",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              FilterPage().launch(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Filter",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              LoginPage().launch(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "login",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Login().launch(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Privacy",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              RecommendationsPage().launch(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "recommensation",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              RegisterPage().launch(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "registration",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              SavedPage().launch(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "saved",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              SplashScreen().launch(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "Splash",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => welcome()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "onboarding",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomNavBar()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06, top: 10),
              child: Text(
                "BottomNavBar",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gothic'),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage()),
              );
            },
            child: Text("chat page"),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UsePaypal(
                          sandboxMode: true,
                          clientId:
                              "AW1TdvpSGbIM5iP4HJNI5TyTmwpY9Gv9dYw8_8yW5lYIbCqf326vrkrp0ce9TAqjEGMHiV3OqJM_aRT0",
                          secretKey:
                              "EHHtTDjnmTZATYBPiGzZC_AZUfMpMAzj2VZUeqlFUrRJA_C0pQNCxDccB5qoRQSEdcOnnKQhycuOWdP9",
                          returnURL: "https://samplesite.com/return",
                          cancelURL: "https://samplesite.com/cancel",
                          onCancel: () {},
                          onSuccess: () {},
                          transactions: const [
                            {
                              "amount": {
                                "total": '10.12',
                                "currency": "USD",
                                "details": {
                                  "subtotal": '10.12',
                                  "shipping": '0',
                                  "shipping_discount": 0
                                }
                              },
                              "description":
                                  "The payment transaction description.",
                              // "payment_options": {
                              //   "allowed_payment_method":
                              //       "INSTANT_FUNDING_SOURCE"
                              // },
                              "item_list": {
                                "items": [
                                  {
                                    "name": "A demo product",
                                    "quantity": 1,
                                    "price": '10.12',
                                    "currency": "USD"
                                  }
                                ],

                                // shipping address is not required though
                                "shipping_address": {
                                  "recipient_name": "Jane Foster",
                                  "line1": "Travis County",
                                  "line2": "",
                                  "city": "Austin",
                                  "country_code": "US",
                                  "postal_code": "73301",
                                  "phone": "+00000000",
                                  "state": "Texas"
                                },
                              }
                            }
                          ],
                        )),
              );
            },
            child: Text("payment page"),
          ),
        ]),
      ),
    );
  }
}
