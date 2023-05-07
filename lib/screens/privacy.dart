import 'package:flutter/material.dart';

import '../themes/myColors.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.pri,
        elevation: 0.0,
        title: Text(
          'Privacy Policy',
          style: TextStyle(
              color: Colors.white,
              // fontWeight: FontWeight.w400,
              fontSize: 20,
              fontFamily: 'Poppins'),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(
                  fontSize: 18, fontFamily: 'Abel', color: Color(0xff4FC5F1)),
            ),
            SizedBox(height: 10),
            Text(
              'Your privacy is important to us. It is Brainstormings policy to respect your privacy regarding any information we may collect from you across our website, and other sites we own and operate.',
              style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  letterSpacing: 0.5,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20),
            Text(
              'We only ask for personal information when we truly need it to provide a service to you. We collect it by fair and lawful means, with your knowledge and consent. We also let you know why we’re collecting it and how it will be used.',
              style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  letterSpacing: 0.5,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20),
            Text(
              'We only retain collected information for as long as necessary to provide you with your requested service. What data we store, we’ll protect within commercially acceptable means to prevent loss and theft, as well as unauthorized access, disclosure, copying, use or modification.',
              style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  letterSpacing: 0.5,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20),
            Text(
              'We don’t share any personally identifying information publicly or with third-parties, except when required to by law.',
              style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  letterSpacing: 0.5,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
