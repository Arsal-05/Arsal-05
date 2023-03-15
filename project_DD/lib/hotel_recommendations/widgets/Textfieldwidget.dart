import 'package:flutter/material.dart';

class Textfieldclass extends StatefulWidget {
  final String hintText;
  // final String label;

  Textfieldclass({
    required this.hintText,
  });

  @override
  State<Textfieldclass> createState() => _TextfieldclassState();
}

class _TextfieldclassState extends State<Textfieldclass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 150.0,
      child: TextField(
        style: TextStyle(
          color: Colors.black,
          // backgroundColor: Colors.tealAccent,
        ),
        // controller: controller,
        decoration: InputDecoration(
          // labelText: widget.label,
          // labelStyle: TextStyle(
          //   color: Colors.black,
          //   fontSize: 19,
          //   fontWeight: FontWeight.bold,
          // ),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.black54,
          ),

          border: InputBorder.none,
        ),
      ),
    );
  }
}
