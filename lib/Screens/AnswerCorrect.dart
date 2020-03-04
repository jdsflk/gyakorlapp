import 'package:flutter/material.dart';

String cw(correct){
  String displayText;
  if(correct){
    displayText = "Helyes!";
    return displayText;
  }
  else{
    displayText = "Nem jó válasz!";
    return displayText;
  }
}

Color bgColor(correct){
  Color bgColor;
  if(correct){
    bgColor = Colors.green;
    return bgColor;
  }
  else{
    bgColor = Colors.red;
    return bgColor;
  }
}

class AnswerCorrect extends StatefulWidget {

  bool correct;

  AnswerCorrect(this.correct);

  @override
  _AnswerCorrectState createState() => _AnswerCorrectState();

}

class _AnswerCorrectState extends State<AnswerCorrect> {

  @override

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: bgColor(widget.correct),
          child: Center(
            child: Container(
              width: 300,
              height: 200,
                child: Text(
                  cw(widget.correct),
                  style: TextStyle(
                    fontSize: 75,
                  ),
                  textAlign: TextAlign.center,
                ),
            ),
          ),
        ),
      ),
    );
  }
}
