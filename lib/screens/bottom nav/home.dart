import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rent_a_room/screens/details.dart';
import 'package:rent_a_room/screens/filter.dart';

import '../../themes/myColors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 3;
  List<Map<String, dynamic>> _adData = [
    {
      'name': 'The Aston Vill',
      'price': '€200/month',
      'location': 'Alice Springs, Kingston, London',
    },
    {
      'name': 'The Aston Vill',
      'price': '€200/month',
      'location': 'Alice Springs, Kingston, London',
    },
    {
      'name': 'The Aston Vill',
      'price': '€200/month',
      'location': 'Alice Springs, Kingston, London',
    },
  ];

  final List<String> _locations = [
    'Kingston, London',
    'Location 2',
    'Location 3'
  ];
  String _selectedLocation = 'Kingston, London';

  final List<String> _offers = [
    'Offer 1',
    'Offer 2',
    'Offer 3',
  ];
  final PageController _pageController =
      PageController(viewportFraction: 0.8, initialPage: 420);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current Location',
                    style: TextStyle(
                      color: Color(0xff878787),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: AppColors.pri,
                      ),
                      DropdownButton(
                        value: _selectedLocation,
                        items: _locations.map((location) {
                          return DropdownMenuItem(
                            value: location,
                            child: Text(
                              location,
                              style: TextStyle(
                                  color: AppColors.pri,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedLocation = value.toString();
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xffEBEBEB), width: 1)),
                child: IconButton(
                  icon: ImageIcon(
                    AssetImage("assets/images/Splash/Notification.png"),
                  ),
                  onPressed: () {},
                  color: AppColors.pri,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: ImageIcon(
                      AssetImage("assets/images/Splash/search.png"),
                      color: AppColors.pri,
                      size: 20,
                    ),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FilterPage()),
                        );
                      },
                      icon: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.pri),
                        child: ImageIcon(
                          AssetImage("assets/images/Splash/filter.png"),
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    )),
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 130,
              // width: MediaQuery.of(context).size.width * 2,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  1000,
                  (index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      'assets/images/Splash/advert.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index % _offers.length;
                  });
                },
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_offers.length, (index) {
                return Container(
                  width: _selectedIndex == index ? 6 : 4,
                  height: _selectedIndex == index ? 6 : 4,
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _selectedIndex == index
                        ? AppColors.pri
                        : Color(0xff878787),
                  ),
                );
              }),
            ),
            SizedBox(height: 16),
            Text(
              'Nearby Your Location',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: _adData.length, // replace with actual card count
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(16),
                    child: _buildAdCard(_adData[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAdCard(Map<String, dynamic> adData) {
    return Container(
      height: 321,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => details()),
              );
            },
            child: Container(
              height: 209,
              width: 330,
              child: Image.asset(
                'assets/images/Splash/Card.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Text(
                  adData['name'],
                  style: TextStyle(fontSize: 14, color: AppColors.pri),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: ImageIcon(
                    AssetImage("assets/images/Splash/likefill.png"),
                    // color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              adData['location'],
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff878787)),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              adData['price'],
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.pri),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
