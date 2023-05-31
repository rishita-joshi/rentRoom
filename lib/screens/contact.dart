import 'package:flutter/material.dart';

import '../themes/ColorPalette.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  late String _selectedOption;
  TextEditingController _messageController = TextEditingController();

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
              backgroundColor: Colors.white,
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text(
                'Contact',
                style: TextStyle(
                    color: ColorPalette.blackColor,
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
            color: Colors.white,
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
                      // fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Name',
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
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Color(0XFFEBEBEB)),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButtonFormField<String>(
                        icon: ImageIcon(
                          AssetImage("assets/images/Splash/dropdown.png"),
                          size: 18,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
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
                            child: Text('Option 1'),
                          ),
                          DropdownMenuItem(
                            value: 'Option 2',
                            child: Text('Option 2'),
                          ),
                          DropdownMenuItem(
                            value: 'Option 3',
                            child: Text('Option 3'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Message',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    controller: _messageController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color(0xffEBEBEB),
                        ),
                      ),
                      hintText: 'Enter Here',
                      hintStyle: TextStyle(fontSize: 14),
                    ),
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
                          style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorPalette.blackColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
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
