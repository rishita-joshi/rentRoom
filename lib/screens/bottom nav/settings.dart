import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:rent_a_room/config/routes.dart';
import 'package:rent_a_room/screens/auth/login_page.dart';
import 'package:rent_a_room/screens/bottom%20nav/profile.dart';
import 'package:rent_a_room/screens/privacy.dart';

import '../../themes/ColorPalette.dart';
import '../../utils/design_utils.dart';

class settings extends StatefulWidget {
  @override
  _state createState() => _state();
}

class _state extends State<settings> {
  bool isSwitchedNoti = false;
  bool isSwitchedAppNoti = true;

  @override
  Widget build(BuildContext context) {
    const TextStyle mystyle = TextStyle(
        fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Gilroy');
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: AppBar(
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto',
                  fontSize: 20),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.fromLTRB(12, 20, 12, 0),
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? ColorPalette.darkGrayColor
                  : ColorPalette.whiteColor,
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                  decoration: Theme.of(context).brightness == Brightness.dark
                      ? darkBoxDecoration
                      : lightBoxDecoration,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gilroy'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(
                                  'Profile',
                                  style: mystyle,
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_outlined,
                                    color: Theme.of(context).iconTheme.color,
                                    size: 22,
                                  ),
                                  onPressed: () {
                                    profile().launch(context);
                                  },
                                ),
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Change Password',
                                  style: mystyle,
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_outlined,
                                    color: Theme.of(context).iconTheme.color,
                                    size: 22,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Saved Advert',
                                  style: mystyle,
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_outlined,
                                    color: Theme.of(context).iconTheme.color,
                                    size: 22,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                  decoration: Theme.of(context).brightness == Brightness.dark
                      ? darkBoxDecoration
                      : lightBoxDecoration,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Notification',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Gilroy'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Notification',
                                  style: mystyle,
                                ),
                                Spacer(),
                                SizedBox(
                                  height: 30,
                                  width: 40,
                                  child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: Switch(
                                      value: isSwitchedNoti,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitchedNoti = value;
                                          print(isSwitchedNoti);
                                        });
                                      },
                                      activeTrackColor:
                                          Theme.of(context).iconTheme.color,
                                      activeColor:
                                          Theme.of(context).iconTheme.color,
                                      inactiveTrackColor: Color(0xff878787),
                                      inactiveThumbColor:
                                          Theme.of(context).iconTheme.color,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'App Notification',
                                  style: mystyle,
                                ),
                                Spacer(),
                                SizedBox(
                                  height: 30,
                                  width: 40,
                                  child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: Switch(
                                      value: isSwitchedAppNoti,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitchedAppNoti = value;
                                          print(isSwitchedAppNoti);
                                        });
                                      },
                                      activeTrackColor:
                                          Theme.of(context).iconTheme.color,
                                      activeColor:
                                          Theme.of(context).iconTheme.color,
                                      inactiveTrackColor: Color(0xff878787),
                                      inactiveThumbColor:
                                          Theme.of(context).iconTheme.color,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                  decoration: Theme.of(context).brightness == Brightness.dark
                      ? darkBoxDecoration
                      : lightBoxDecoration,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Other',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Gilroy'),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Privacy',
                                  style: mystyle,
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_outlined,
                                    color: Theme.of(context).iconTheme.color,
                                    size: 22,
                                  ),
                                  onPressed: () {
                                    PrivacyPolicyPage().launch(context);
                                  },
                                ),
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Network Partners',
                                  style: mystyle,
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_outlined,
                                    color: Theme.of(context).iconTheme.color,
                                    size: 22,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'About Us',
                                  style: mystyle,
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_outlined,
                                    color: Theme.of(context).iconTheme.color,
                                    size: 22,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Logout',
                                  style: mystyle,
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_outlined,
                                    color: Theme.of(context).iconTheme.color,
                                    size: 22,
                                  ),
                                  onPressed: () {
                                    Login().launch(context, isNewTask: false);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
