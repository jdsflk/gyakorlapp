import 'package:flutter/material.dart';
import 'package:loginmodule/UI/CustomInputBox.dart';

class SignUp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Center(
          child: Container(
            height: 400,
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomInputBox(Icon(Icons.person, color: Colors.white), 'Felhasználónév', false),
                CustomInputBox(Icon(Icons.vpn_key, color: Colors.white), 'Jelszó', true),
                CustomInputBox(Icon(Icons.vpn_key, color: Colors.white), 'Jelszó ismét', true),
                CustomInputBox(Icon(Icons.email, color: Colors.white), 'E-mail cím', false),
                RaisedButton(onPressed: (){},
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
              ],
            ),

          ),
        ),
      ),
    );
  }

}