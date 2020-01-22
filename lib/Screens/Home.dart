import 'package:flutter/material.dart';
import 'package:loginmodule/Screens/SignUp.dart';
import 'package:loginmodule/UI/CustomInputBox.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                width: 400,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CustomInputBox(Icon(Icons.person, color: Colors.white), 'Felhasználónév', false),
                    CustomInputBox(Icon(Icons.lock, color: Colors.white), 'Jelszó', true),
                    Container(
                        width: 300, //110
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:<Widget>[
                              RaisedButton(
                                onPressed: (){},
                                color: Colors.blueGrey,
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Text(
                                  'Bejelentkezés',
                                  style: TextStyle(
                                      fontSize: 14 //12.5
                                  ),
                                ),
                              ),
                              RaisedButton(
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => SignUp()),
                                  );
                                },
                                color: Colors.blueGrey,
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Text(
                                    'Regisztráció',
                                    style: TextStyle(
                                        fontSize: 14
                                    )
                                ),
                              )
                            ]
                        )
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}