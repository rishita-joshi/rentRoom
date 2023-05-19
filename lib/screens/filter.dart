import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

import '../themes/myColors.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  double _selectedPrice = 3000.0;
  int _selectedDistance = 1;

  List<String> _distances = ['10 km', '20 km', '50 km'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: AppBar(
            //backgroundColor: Colors.white,
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
               // color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'Filters',
              style: TextStyle(
                  //color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _selectedPrice = 3000.0;
                    _selectedDistance = 1;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                     // color: Color(0xff878787),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
            centerTitle: true,
          ),
        ),
      ),
      body: Container(
      //  color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
              child: Text(
                'Price',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Slider(
                activeColor: ColorPalette.blackColor,
                inactiveColor: Color(0xffEBEBEB),
                thumbColor: ColorPalette.blackColor,
                min: 100.0,
                max: 13000.0,
                divisions: 100,
                label: 'Price: €${_selectedPrice.round()}',
                value: _selectedPrice,
                onChanged: (double value) {
                  setState(() {
                    _selectedPrice = value;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildPriceTag('100€'),
                _buildPriceTag('200€'),
                _buildPriceTag('2000€'),
                _buildPriceTag('13000€'),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 0, 10),
              child: Text(
                'Distance',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: ColumnSuper(
                innerDistance: -20,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RadioListTile(
                    activeColor: Color(0xff878787),
                    title: Text(
                      _distances[0],
                      style: TextStyle(fontSize: 14),
                    ),
                    value: 0,
                    groupValue: _selectedDistance,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedDistance = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Color(0xff878787),
                    title: Text(_distances[1], style: TextStyle(fontSize: 14)),
                    value: 1,
                    groupValue: _selectedDistance,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedDistance = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Color(0xff878787),
                    title: Text(_distances[2], style: TextStyle(fontSize: 14)),
                    value: 2,
                    groupValue: _selectedDistance,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedDistance = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Spacer(),
            Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 57,
                  width: 301,
                  decoration: BoxDecoration(
                      color: ColorPalette.blackColor,
                      borderRadius: BorderRadius.circular(13)),
                  child: Center(
                      child: Text(
                    'Filter',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPriceTag(String label) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(5),
       // color: Colors.white,
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 15, 
    //    color: ColorPalette.blackColor
        ),
      ),
    );
  }
}
