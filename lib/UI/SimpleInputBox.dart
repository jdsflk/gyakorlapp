import 'package:flutter/material.dart';

class SimpleInputBox extends StatefulWidget {

  String hintText;
  double width;
  double conHeight;
  Color color;
  TextEditingController myController;

  SimpleInputBox(this.hintText, this.width, this.conHeight, this.color, this.myController);

  @override
  _SimpleInputBoxState createState() => _SimpleInputBoxState();

}

class _SimpleInputBoxState extends State<SimpleInputBox> {

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    widget.myController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.conHeight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 10.0,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: TextField(
              controller: widget.myController,
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              maxLines: 6,
              decoration: InputDecoration(
                  hintMaxLines: null,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                  ),
                  border: InputBorder.none,
                  fillColor: widget.color,
                  filled: true
              ),
            ),
          ),
        ),
      ),
    );
  }
}