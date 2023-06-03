import 'package:flutter/material.dart';
import 'package:rent_a_room/utils/design_utils.dart';

import '../themes/ColorPalette.dart';

class RecommendationsPage extends StatefulWidget {
  @override
  _RecommendationsPageState createState() => _RecommendationsPageState();
}

class _RecommendationsPageState extends State<RecommendationsPage> {
  // sample data for cards
  List<Map<String, dynamic>> _cardData = [
    {
      'name': 'Richard Lukas',
      'bio':
          'Student | 25 | Searching for \n affordable single room flat\n near college in East London.',
      'imageUrl': 'https://randomuser.me/api/portraits/men/1.jpg',
      'budget': '€650/month',
      'date': '1 Dec',
      'location': 'Kensington',
    },
    {
      'name': 'Richard Lukas',
      'bio':
          'Student | 25 | Searching for \n affordable single room flat\n near college in East London.',
      'imageUrl': 'https://randomuser.me/api/portraits/men/1.jpg',
      'budget': '€650/month',
      'date': '1 Dec',
      'location': 'Kensington',
    },
    {
      'name': 'Richard Lukas',
      'bio':
          'Student | 25 | Searching for \n affordable single room flat\n near college in East London.',
      'imageUrl': 'https://randomuser.me/api/portraits/men/1.jpg',
      'budget': '€650/month',
      'date': '1 Dec',
      'location': 'Kensington',
    },
  ];

  final TextEditingController _searchController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              leadingWidth: MediaQuery.of(context).size.width * 0.15,
              title: SizedBox(
                height: 40,
                child: TextField(
                  controller: _searchController,
                  style: const TextStyle(color: Color(0xff878787)),
                  cursorColor: Color(0xff878787),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'Recommendation',
                    hintStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 15),
                    suffixIcon: Icon(
                      Icons.search_rounded,
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xff878787))),
                  ),
                  onChanged: (value) {
                    // Perform search functionality here
                  },
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      decoration:
                          Theme.of(context).brightness == Brightness.dark
                              ? darkBoxFilterDecoration
                              : lightBoxFilterDecoration,
                      height: 29,
                      width: 74,
                      child: Center(
                        child: InkWell(
                          child: Text(
                            "Filters",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: _cardData.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
            child: _buildCard(_cardData[index]),
          );
        },
      ),
    );
  }

  Widget _buildCard(Map<String, dynamic> cardData) {
    return Card(
      elevation: 1,
      color: Theme.of(context).brightness == Brightness.dark
          ? ColorPalette.transparentColor
          : ColorPalette.whiteColor,
      shape: Theme.of(context).brightness == Brightness.dark
          ? darkCardBorderTheme
          : lightCardBorderTheme,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.all(20),
                    child: ClipRRect(
                      // margin: EdgeInsets.only(right: 8.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      child: Image.network(cardData['imageUrl'], scale: 1.1),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cardData['bio'],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          height: 1.5,
                          color: ColorPalette.textColorLightGray,
                        ),
                        maxLines: 3,
                      ),
                      SizedBox(height: 15),
                      Text(
                        cardData['name'],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 28,
                              width: 80,
                              margin: EdgeInsets.only(right: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: ColorPalette.darkGrayColor,
                                border: Border.all(
                                  color: ColorPalette.whiteColor,
                                  width: 1,
                                ), //Border.all
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                'Save',
                                style: TextStyle(
                                  color: ColorPalette.whiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 28,
                              width: 80,
                              margin: EdgeInsets.only(right: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: ColorPalette.darkGrayColor,
                                border: Border.all(
                                  color: ColorPalette.whiteColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                'Contact',
                                style: TextStyle(
                                  color: ColorPalette.whiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 0, 4, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rent',
                        style: TextStyle(
                          color: ColorPalette.textColorLightGray,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        cardData['budget'],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Available',
                        style: TextStyle(
                            color: ColorPalette.textColorLightGray,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        cardData['date'],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                            color: ColorPalette.textColorLightGray,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        cardData['location'],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
