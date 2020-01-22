import 'package:flutter/material.dart';
import 'package:loginmodule/UI/SimpleInputBox.dart';

class KahootQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Center(
          child: Container(
            width: 325,
            height: 400,
            //color: Colors.redAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Material(
                  elevation: 10,
                  child: TextField(
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
                              child: SimpleInputBox('A opció', 150, 150, Colors.red)
                                ),
                            Align(
                                alignment: Alignment.topRight,
                                child: SimpleInputBox('B opció', 150, 150, Colors.blue)
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: SimpleInputBox('C opció', 150, 150, Colors.yellowAccent)
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: SimpleInputBox('D opció', 150, 150, Colors.green)
                            ),
                          ]
                        )
                      ]
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}