import 'package:flutter/material.dart';

class Dropdownclass extends StatefulWidget {
  late List<String> values;

  late double width;

  Dropdownclass({required this.values, required this.width});

  @override
  State<Dropdownclass> createState() => _DropdownclassState();
}

class _DropdownclassState extends State<Dropdownclass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select your city :',
          style: TextStyle(
            fontSize: 19.5,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: widget.width * 0.05),
          width: widget.width,
          decoration: BoxDecoration(
            color: Colors.blueGrey[400],
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
          // drop down button
          child: DropdownButton(
            value: widget.values.first,
            onChanged: (_) {},
            items: widget.values.map((e) {
              return DropdownMenuItem(
                child: Text(e),
                value: e,
              );
            }).toList(),
            underline: Container(),
            dropdownColor: Colors.blueGrey[400],
            borderRadius: BorderRadius.circular(
              5.0,
            ),
            style: const TextStyle(
              fontSize: 19.0,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
