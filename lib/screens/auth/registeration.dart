import 'dart:ui';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:rent_a_room/config/font_asset.dart';

import '../../themes/ColorPalette.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int _selectedGenderIndex = 0;
  int _selectedWhatLookingIndex = 0;
  List<bool> _selectedAmenities = List.generate(6, (_) => false);
  TextEditingController _nameController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

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
              'Register',
              style: FontStyles.textStyleRegular(
                  color: Theme.of(context).colorScheme.primary),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Name',
                style: FontStyles.textStyleRegular(
                    color: Theme.of(context).colorScheme.primary),
              ),
              SizedBox(height: 6.0),
              SizedBox(
                height: 40,
                child: TextField(
                  textAlign: TextAlign.start,
                  controller: _nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                'Gender',
                style: FontStyles.textStyleRegular(
                    color: Theme.of(context).colorScheme.primary),
              ),
              Row(
                // innerDistance: -0.1,
                children: [
                  Flexible(
                    flex: 2,
                    child: RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      visualDensity: const VisualDensity(horizontal: -4.0),
                      dense: true,
                      activeColor: Color(0xff878787),
                      title: Text(
                        'Male',
                        style: FontStyles.textStyleRegular(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      value: 0,
                      groupValue: _selectedGenderIndex,
                      onChanged: (val) {
                        setState(() {
                          _selectedGenderIndex = val!;
                        });
                      },
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      visualDensity: const VisualDensity(horizontal: -4.0),
                      dense: true,
                      activeColor: Color(0xff878787),
                      title: Text(
                        'Female',
                        style: FontStyles.textStyleRegular(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      value: 1,
                      groupValue: _selectedGenderIndex,
                      onChanged: (val) {
                        setState(() {
                          _selectedGenderIndex = val!;
                        });
                      },
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      visualDensity: const VisualDensity(horizontal: -4.0),
                      dense: true,
                      activeColor: Color(0xff878787),
                      title: Text(
                        'Non-binary',
                        style: FontStyles.textStyleRegular(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      value: 2,
                      groupValue: _selectedGenderIndex,
                      onChanged: (val) {
                        setState(() {
                          _selectedGenderIndex = val!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.0),
              Text(
                'What are you looking for?',
                style: FontStyles.textStyleRegular(
                    color: Theme.of(context).colorScheme.primary),
              ),
              SizedBox(height: 6.0),
              ColumnSuper(
                innerDistance: -10,
                children: [
                  RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    visualDensity: const VisualDensity(
                      horizontal: -4.0,
                    ),
                    dense: true,
                    activeColor: Color(0xff878787),
                    title: Text(
                      'Rent my place',
                      style: FontStyles.textStyleRegular(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    value: 0,
                    groupValue: _selectedWhatLookingIndex,
                    onChanged: (val) {
                      setState(() {
                        _selectedWhatLookingIndex = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    visualDensity: const VisualDensity(horizontal: -4.0),
                    dense: true,
                    activeColor: Color(0xff878787),
                    title: Text(
                      'Find roommate',
                      style: FontStyles.textStyleRegular(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    value: 1,
                    groupValue: _selectedWhatLookingIndex,
                    onChanged: (val) {
                      setState(() {
                        _selectedWhatLookingIndex = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    visualDensity: const VisualDensity(horizontal: -4.0),
                    dense: true,
                    activeColor: Color(0xff878787),
                    title: Text(
                      'Rent a place',
                      style: FontStyles.textStyleRegular(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    value: 2,
                    groupValue: _selectedWhatLookingIndex,
                    onChanged: (val) {
                      setState(() {
                        _selectedWhatLookingIndex = val!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 24.0),
              Text(
                'Location',
                style: FontStyles.textStyleRegular(
                    color: Theme.of(context).colorScheme.primary),
              ),
              SizedBox(height: 6.0),
              TextField(
                controller: _locationController,
                decoration: InputDecoration(
                  hintText: 'Enter location here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                'Description',
                style: FontStyles.textStyleRegular(
                    color: Theme.of(context).colorScheme.primary),
              ),
              SizedBox(height: 6.0),
              TextField(
                controller: _descriptionController,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'Enter here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                'Media',
                style: FontStyles.textStyleRegular(
                    color: Theme.of(context).colorScheme.primary),
              ),
              SizedBox(height: 6.0),
              Container(
                height: 72.0,
                // width: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      // margin: EdgeInsets.only(right: 8.0),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Image.network(
                            'https://picsum.photos/id/${index + 10}/100/72'),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                'Amenities',
                style: FontStyles.textStyleRegular(
                    color: Theme.of(context).colorScheme.primary),
              ),
              SizedBox(height: 6.0),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                // spacing: 5.0,
                runSpacing: -15.0,
                children: [
                  _buildAmenityTile(0, 'WiFi'),
                  _buildAmenityTile(1, 'Water'),
                  _buildAmenityTile(2, 'Bathroom ensuite'),
                  _buildAmenityTile(3, 'Pool'),
                  _buildAmenityTile(4, 'Kitchen'),
                  _buildAmenityTile(5, 'AC'),
                ],
              ),
              SizedBox(height: 6.0),
              SizedBox(
                height: 57,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorPalette.blackColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    'Add',
                    style: FontStyles.textStyleRegular(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAmenityTile(int index, String title) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      child: ListTileTheme(
        horizontalTitleGap: 2,
        child: CheckboxListTile(
          activeColor: Color(0xff878787),
          checkColor: Color(0xff878787),
          selectedTileColor: Color(0xff878787),
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(
            title,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Gilroy'),
          ),
          value: _selectedAmenities[index],
          onChanged: (val) {
            setState(() {
              _selectedAmenities[index] = val!;
            });
          },
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
