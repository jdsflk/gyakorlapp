import 'package:flutter/material.dart';

class CustomInputBox extends StatelessWidget{

  Icon boxIcon;
  String hintText;
  bool obscureText;

  CustomInputBox(this.boxIcon, this.hintText, this.obscureText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Material(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.blueGrey,
          elevation: 5.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: boxIcon,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    )
                ),
                width: 200,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                        hintText: hintText,
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true
                    ),
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black

                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }

}