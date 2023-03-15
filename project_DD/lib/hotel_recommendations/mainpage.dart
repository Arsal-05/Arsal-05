import 'package:flutter/material.dart';
import 'package:project_dd/hotel_recommendations/widgets/Dropdownwidget.dart';
import 'package:project_dd/hotel_recommendations/widgets/image_card.dart';

class Mainpageclass extends StatefulWidget {
  const Mainpageclass({Key? key}) : super(key: key);

  @override
  State<Mainpageclass> createState() => _MainpageclassState();
}

class _MainpageclassState extends State<Mainpageclass> {
  late double _deviceHeight;
  late double _deviceWidth;
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xE5FFFFFF),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: _deviceWidth * 0.02, vertical: _deviceHeight * 0.02),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'Hotels',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'Recommendation',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                    ),
                  ),
                ),
                _DestinationDropDownwidgegt(),
                const SizedBox(
                  height: 10.0,
                ),
                _Textfiledforsearch(),
                const SizedBox(
                  height: 10.0,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: _Searchbuttonwidget(),
                ),
                const SizedBox(
                  height: 10.0,
                ),

                // _Hotelnameratingwidget(),
                Imagecard(),
                const SizedBox(
                  height: 15.0,
                ),
                Imagecard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //  DropDownwidget called
  Widget _DestinationDropDownwidgegt() {
    return Dropdownclass(
        values: ['Rawalpindi', 'Islamabad'], width: _deviceWidth);
  }

  //  Search button widget
  Widget _Searchbuttonwidget() {
    return Container(
      width: _deviceWidth * 0.25,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          'Search',
          style: TextStyle(
            color: Colors.white,
            fontSize: 19.0,
          ),
        ),
      ),
    );
  }

  // text field below search button
  Widget _Textfiledforsearch() {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Enter your description",
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
          // labelText: 'Enter your name',
          labelStyle: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.blueGrey[400],
        ),
        style: const TextStyle(
          fontFamily: 'Montserrat',
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
