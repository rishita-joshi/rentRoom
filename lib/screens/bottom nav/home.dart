import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:rent_a_room/config/contents.dart';
import 'package:rent_a_room/config/font_asset.dart';
import 'package:rent_a_room/screens/details.dart';
import 'package:rent_a_room/themes/ColorPalette.dart';

import '../../bloc/theme_cubit.dart';

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
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: AppBar(
            elevation: 0,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Current Location',
                  style: FontStyles.textStyleBold(
                      color: Theme.of(context).colorScheme.primary),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    context.read<ThemeCubit>().switchTheme();
                  },
                  child: Icon(
                    context.read<ThemeCubit>().state.themeMode ==
                            ThemeMode.light
                        ? Icons.light_mode_outlined
                        : Icons.dark_mode_outlined,
                    color: Theme.of(context).iconTheme.color,
                    size: 25,
                  ),
                ),
              ],
            ),
            actions: [
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xffEBEBEB), width: 1)),
                child: IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {},
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            locationDropDownBtn(),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: ImageIcon(
                    AssetImage("assets/images/Splash/search.png"),
                    color: Theme.of(context).colorScheme.background,
                    size: 20,
                  ),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.onPrimary),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      Contents().launch(context);
                    },
                    icon: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Theme.of(context).colorScheme.background,
                      ),
                      child: ImageIcon(
                        AssetImage("assets/images/Splash/filter.png"),
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  )),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_offers.length, (index) {
                return Container(
                  width: _selectedIndex == index ? 6 : 4,
                  height: _selectedIndex == index ? 6 : 4,
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: _selectedIndex == index
                    //     ? ColorPalette.blackColor
                    //     : Color(0xff878787),
                  ),
                );
              }),
            ),
            SizedBox(height: 10),
            Text(
              'Nearby Your Location',
              style: FontStyles.textStyleBold(
                  color: Theme.of(context).colorScheme.primary, fontSize: 16),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: _adData.length, // replace with actual card count
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
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
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              details().launch(context);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0)),
              child: Image.asset(
                'assets/images/Splash/Card.png',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.9,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 20,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    adData['name'],
                    style: FontStyles.textStyleRegular(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 18),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              adData['location'],
              style: FontStyles.textStyleSemiBold(
                  color: Theme.of(context).colorScheme.secondary, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              adData['price'],
              style: FontStyles.textStyleRegular(
                  color: Theme.of(context).colorScheme.primary, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget locationDropDownBtn() {
    return Row(
      children: [
        Icon(
          Icons.location_pin,
          color: Theme.of(context).iconTheme.color,
          size: 16,
        ),
        SizedBox(width: 8),
        Container(
          height: 50,
          width: 200,
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              iconSize: 30,
              menuMaxHeight: 150,
              dropdownColor: Theme.of(context).brightness == Brightness.dark
                  ? ColorPalette.darkGrayColor
                  : ColorPalette.whiteColor,
              isDense: true,
              iconDisabledColor: Theme.of(context).colorScheme.primary,
              iconEnabledColor: Theme.of(context).colorScheme.primary,
              value: _selectedLocation,
              onChanged: (value) async {
                setState(() {
                  _selectedLocation = value.toString();
                });
              },
              items: _locations
                  .map<DropdownMenuItem>(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Padding(
                        padding: EdgeInsets.zero,
                        child: Text(
                          e,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
