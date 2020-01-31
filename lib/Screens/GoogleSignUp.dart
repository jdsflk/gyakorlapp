import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginmodule/Screens/ScrollableClassrooms.dart';
import 'package:loginmodule/Services/Auth.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loginmodule/UI/Loading.dart';

class GoogleSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 10, 25, 50),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: (MediaQuery.of(context).size.height) / 5,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                height: (MediaQuery.of(context).size.height) / 5,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "GyakorlApp",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  authService.testSignInWithGoogle();
                  if(!authService.loggedIn){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loading()));
                  }
                    Navigator.push(
                      context,
                    MaterialPageRoute(
                        builder: (context) => ScrollableClassroom())

                    );
                    },
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 15.0, top: 10.0, bottom: 10.0),
                      child: Icon(FontAwesomeIcons.google),
                    ),
                    Text(
                      "Bejelentkezés Google fiókkal",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}