import 'package:flutter/material.dart';
import 'package:rent_a_room/utils/design_utils.dart';

class profile extends StatelessWidget {
  final List<Map<String, String>> adverts = [
    {
      'name': 'The Aston Villa',
      'address': 'Alice Springs, Kingston,\n London',
      'image_url': 'https://picsum.photos/200',
    },
    {
      'name': 'The Aston Villa',
      'address': 'Alice Springs, Kingston,\n London',
      'image_url': 'https://picsum.photos/200',
    },
  ];

  @override
  Widget build(BuildContext context) {
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
              'Profile',
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
        child: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/Splash/dp.png'),
                ),
              ),
              SizedBox(height: 5),
              Container(
                  decoration: Theme.of(context).brightness == Brightness.dark
                      ? darkBoxDecoration
                      : lightBoxDecoration,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                          SizedBox(height: 21),
                          Text(
                            'Contact Number',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 21),
                          Text(
                            'Email',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Doe',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 21),
                          Text(
                            '+1 123-456-7890',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 21),
                          Text(
                            'johndoe@example.com',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: Theme.of(context).brightness == Brightness.dark
                    ? darkBoxDecoration
                    : lightBoxDecoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Adverts',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Gilroy'),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: adverts.map((advert) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: Card(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          advert['name']!,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          advert['address']!,
                                          style: TextStyle(
                                              fontSize: 14,
                                              height: 2,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff878787)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 83,
                                  height: 68,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? darkBoxBorderDecoration
                                        : lightBoxBorderDecoration,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(advert['image_url']!),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
