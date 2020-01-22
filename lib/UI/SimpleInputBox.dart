import 'package:flutter/material.dart';

class SimpleInputBox extends StatelessWidget {

  String hintText;
  double width;
  double conHeight;
  Color color;

  SimpleInputBox(this.hintText, this.width, this.conHeight, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: conHeight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 10.0,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: TextField(
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              maxLines: 6,
              decoration: InputDecoration(
                  hintMaxLines: null,
                  hintText: hintText,
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                  ),
                  border: InputBorder.none,
                  fillColor: color,
                  filled: true
              ),
            ),
          ),
        ),
      ),
    );
  }

}