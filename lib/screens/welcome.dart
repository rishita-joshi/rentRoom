import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:rent_a_room/screens/auth/login.dart';
import '../themes/ColorPalette.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage()));
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => LoginPage()),
                // );
              },
              child: Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.06, top: 10),
                child: Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.underline,
                      color: ColorPalette.blackColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Gilroy'),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ColumnSuper(
            innerDistance: -20,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Splash/bg.png"),
                          fit: BoxFit.cover,
                          // fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter))),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  children: [
                    Spacer(),
                    Spacer(),
                    Text(
                      "Find your Space",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Gilroy'),
                    ),
                    Spacer(),
                    Text(
                      "We helped 36,600 people to\n find their place",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Gilroy'),
                    ),
                    // Spacer(),
                    // Spacer(),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Center(
                            child:
                                Image.asset("assets/images/Splash/slider.png"),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                        ),
                        Container(
                          child: Image.asset(
                            "assets/images/Splash/rightarrow.png",
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    Spacer(),
                  ],
                ),
                decoration: BoxDecoration(
                    color: ColorPalette.blackColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


































// class welcome extends StatelessWidget {
//   const welcome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage("assets/images/Splash/bg.png"),
//                     // fit: BoxFit.cover,
//                     fit: BoxFit.fitWidth,
//                     alignment: Alignment.topCenter)),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.85,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => LoginPage()),
//                         );
//                       },
//                       child: Text(
//                         "Skip",
//                         style: TextStyle(
//                             fontSize: 18,
//                             decoration: TextDecoration.underline,
//                             fontWeight: FontWeight.w600,
//                             fontFamily: 'Gilroy'),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height * 0.52,
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height * 0.407,
//                   // color: Colors.blue,
//                   child: 
//               ],
//             )),
//       ),
//     );
//   }
// }














