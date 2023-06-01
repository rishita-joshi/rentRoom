import 'package:flutter/material.dart';

import '../themes/ColorPalette.dart';
import '../utils/design_utils.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  late String _selectedOption;
  TextEditingController _messageController = TextEditingController();
  final nameController = TextEditingController();
  final messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedOption = 'Option 1'; // Initialize to the first item in the list
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: AppBar(
              // backgroundColor: Colors.white,
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Theme.of(context).iconTheme.color,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text(
                'Contact',
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
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    'Name',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 50,
                    child: TextFormField(
                        controller: nameController,
                        cursorColor: ColorPalette.blackColor,
                        style: TextStyle(color: ColorPalette.blackColor),
                        decoration: getTextFiledDecRadius('Name', context)
                        //     InputDecoration(
                        //   border: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(10.0),
                        //   ),
                        //   hintText: 'Name',
                        //   hintStyle: TextStyle(
                        //     color: Theme.of(context).colorScheme.primary,
                        //     fontSize: 16,
                        //   ),
                        // ),
                        ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Select',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? ColorPalette.whiteColor
                          : ColorPalette.transparentColor,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Color(0XFFEBEBEB)),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButtonFormField<String>(
                        dropdownColor: ColorPalette.whiteColor,
                        icon: ImageIcon(
                          AssetImage("assets/images/Splash/dropdown.png"),
                          size: 18,
                          color: ColorPalette.darkGrayColor,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: 'Select',
                          hintStyle: TextStyle(
                            color: ColorPalette.darkGrayColor,
                            fontSize: 16.0,
                          ),
                        ),
                        value: _selectedOption,
                        onChanged: (value) {
                          setState(() {
                            _selectedOption = value!;
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            value: 'Option 1',
                            child: Text(
                              'Option 1',
                              style: TextStyle(
                                color: ColorPalette.darkGrayColor,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'Option 2',
                            child: Text(
                              'Option 2',
                              style: TextStyle(
                                color: ColorPalette.darkGrayColor,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'Option 3',
                            child: Text(
                              'Option 3',
                              style: TextStyle(
                                color: ColorPalette.darkGrayColor,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Message',
                    style: TextStyle(
                      color: ColorPalette.darkGrayColor,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    controller: _messageController,
                    cursorColor: ColorPalette.blackColor,
                    style: TextStyle(color: ColorPalette.blackColor),
                    decoration: getTextFiledDecRadius('Enter Here', context),
                    maxLines: 5,
                    // decoration: InputDecoration(
                    //   border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(10.0),
                    //     borderSide: BorderSide(
                    //       color: Color(0xffEBEBEB),
                    //     ),
                    //   ),
                    //   hintText: 'Enter Here',
                    //   hintStyle: TextStyle(fontSize: 14),
                    // ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 57,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Send Message',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                color: ColorPalette.whiteColor),
                          ),
                          style: Theme.of(context).brightness == Brightness.dark
                              ? darkElevatedButtonTheme
                              : lightElevatedButtonTheme

                          //     style: ElevatedButton.styleFrom(
                          //       backgroundColor: ColorPalette.whiteColor,
                          //       shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(10.0),
                          //       ),
                          //     ),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
