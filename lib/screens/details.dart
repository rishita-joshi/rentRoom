import 'package:flutter/material.dart';

import '../themes/myColors.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  final TextEditingController _searchController = TextEditingController();
  // List<Map<String, dynamic>> _profileData = [
  //   {
  //     'name': 'Rick Richard',
  //     'bio':
  //         'Student | 25 | Searching for affordable single room flat near college in East London.',
  //     'budget': '£650 /month',
  //     'occupation': 'Dont Mind',
  //     'available': '1 Dec',
  //     'roomSize': 'Double Room',
  //     'location': 'Kingston',
  //     'roommateGender': 'Dont Mind',
  //     'bathroom': 'Shared',
  //     'ageRange': '23-28 yrs',
  //     'roomSiz': '1000 sq.ft.',
  //     'householdOption': 'Vegetarian Diet',
  //     'livingRoom': 'Shared',
  //     'householdBenifit': 'Available',
  //     'roomAvailable': '4-6 weeks',
  //     // '':'',
  //   }
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            leadingWidth: MediaQuery.of(context).size.width * 0.15,
            title: SizedBox(
              height: 40,
              child: TextField(
                controller: _searchController,
                style: const TextStyle(color: Color(0xff878787)),
                cursorColor: Color(0xff878787),
                decoration: const InputDecoration(
                  hintText: 'Advert',
                  hintStyle: TextStyle(color: Color(0xff878787)),
                  suffixIcon: Icon(
                    Icons.search_rounded,
                    color: Color(0xff303147),
                  ),
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide:
                          BorderSide(width: 1, color: Color(0xff878787))),
                ),
                onChanged: (value) {
                  // Perform search functionality here
                },
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: MediaQuery.of(context).size.width * 0.42,
                      child: Image(
                        image:
                            AssetImage('assets/images/Splash/profileImage.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Spacer(),
                    Container(
                        padding: EdgeInsets.only(left: 8),
                        width: MediaQuery.of(context).size.width * 0.42,
                        height: MediaQuery.of(context).size.width * 0.42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffF6F6F6),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Text(
                              'Rick Richard',
                              style: TextStyle(
                                  color: AppColors.pri,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Text(
                              'Student | 25 | Searching for affordable single room flat near college in East London.',
                              style:
                                  TextStyle(fontSize: 11, color: AppColors.pri),
                            ),
                            Spacer(),
                            Spacer(),
                            Spacer(),
                            Spacer(),
                            Text(
                              'Know more',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff44C1F0),
                                  decoration: TextDecoration.underline),
                            ),
                            Spacer(),
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Text(
                          'Budget',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '£650 /month',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Available',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '1 Dec',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Location',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Kingston',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Location',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Kingston',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Age Range',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '23-28 yrs',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Household Option',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Vegetarian Diet',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Household Benefit',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Available',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Occupation',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Dont mind',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Room Size',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Double Room',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Roommate Gender',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Dont mind',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Bathroom',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Shared',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Room Size',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '1000 sq.ft.',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Living Room',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Shared',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Room Available',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '4-6 weeks',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
                Text(
                  'Preferred',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColors.pri),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Text(
                          'Room Size',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Single Room',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Roommate Gender',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Roommate Occupation',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Student',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pet',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Dog Friendly',
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Roommate Gender',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                        Text(
                          '',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
                Text(
                  'Features Amenities',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColors.pri),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Text(
                          'Disability Access',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Smoking allowed',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Garden Access',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Cleaner Available',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Bike Storage',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Electric charging \npoint for car',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Balcony',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(height: 20),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'WiFi',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Pets allowed',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Kitchen',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Gym nearby',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Bathroom Ensuite',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Parking Available',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          '',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff878787)),
                        ),
                        SizedBox(height: 20),
                      ])
                ]),
                Row(
                  children: [
                    Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 1,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Buddy up',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff44C1F0)),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Report',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.pri),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // decoration: BoxDecoration(color: Colors.white,border: ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 189,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.pri,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10), // <-- Radius
                              ),
                            ),
                            child: Text(
                              'Contact',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            )),
                      ),
                      Spacer(),
                      Spacer(),
                      Spacer(),
                      Spacer(),
                      Spacer(),
                      Spacer(),
                      IconButton(
                        icon: ImageIcon(
                          AssetImage("assets/images/Splash/like.png"),
                        ),
                        onPressed: () {},
                        color: Color(0xff44C1F0),
                      ),
                      Spacer(),
                      IconButton(
                        icon: ImageIcon(
                          AssetImage("assets/images/Splash/menu.png"),
                        ),
                        onPressed: () {},
                        color: AppColors.pri,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
