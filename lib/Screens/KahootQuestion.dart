import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginmodule/Screens/InClassroom.dart';
import 'package:loginmodule/UI/SimpleInputBox.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class KahootQuestion extends StatefulWidget {
  @override
  _KahootQuestionState createState() => _KahootQuestionState();
}

class _KahootQuestionState extends State<KahootQuestion> {
  @override
  final myController = TextEditingController();

  TextEditingController wrongController1 = TextEditingController();
  TextEditingController wrongController2 = TextEditingController();
  TextEditingController wrongController3 = TextEditingController();
  TextEditingController correctController = TextEditingController();

  SimpleInputBox wrongAns1;
  SimpleInputBox wrongAns2;
  SimpleInputBox wrongAns3;
  SimpleInputBox correctAns;

  @override
  void initState(){
    super.initState();
    wrongAns1 = SimpleInputBox('Rossz válasz', 150, 150, Colors.blue, wrongController1);
    wrongAns2 = SimpleInputBox('Rossz válasz', 150, 150, Colors.yellowAccent, wrongController2);
    wrongAns3 = SimpleInputBox('Rossz válasz', 150, 150, Colors.green, wrongController3);
    correctAns = SimpleInputBox('Jó Választ IDE!', 150, 150, Colors.red, correctController);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            color: Colors.blue,
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            //color: Colors.redAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10.0, left: 30.0, right: 30.0),
                  child: Material(
                    elevation: 10,
                    child: TextField(
                      controller: myController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: 'Írd ide a kérdést!',
                          hintStyle: TextStyle(
                              fontSize: 20
                          ),
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          filled: true
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    //color: Colors.green,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: correctAns
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: wrongAns1
                              )
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceEvenly,
                              children: <Widget>[
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: wrongAns2
                                ),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: wrongAns3
                                ),
                              ]
                          ),
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: IconButton(
                      icon: Icon(Icons.save),
                      iconSize: 50,
                      color: Colors.black38,
                      onPressed: () {
                        Firestore.instance.collection("questions")
                            .document()
                            .setData(
                            {
                              "question": myController.text,
                              "correctAns": correctController.text,
                              "wrongAns1": wrongController1.text,
                              "wrongAns2": wrongController2.text,
                              "wrongAns3": wrongController3.text
                            }
                        );
                        Navigator.push(context, MaterialPageRoute(builder: (context) => InClassRoom()));
                      }
                      ),
                ),
              ],
            ),
          ),
        )
    ));
  }
}

