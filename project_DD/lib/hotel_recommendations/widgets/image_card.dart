import 'package:flutter/material.dart';
import 'package:project_dd/hotel_recommendations/widgets/Textfieldwidget.dart';

class Imagecard extends StatelessWidget {
  const Imagecard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 340,
        height: 450,
        decoration: BoxDecoration(
          color: Colors.blueGrey[400],
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: Column(
            children: [
              Container(
                // height: 200,
                // width: 350,
                // alignment: Alignment.center,
                // image import
                child: Image.asset(
                  'assets/chamb.jpg',
                  height: 303,
                  width: 340,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // Textfield widget called
              Textfieldclass(
                hintText: 'Hotel Name',
                // label: 'Hotel Name',
              ),
              SizedBox(
                height: 13,
              ),
              Textfieldclass(
                hintText: 'Rating',
                // label: 'Rating',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
