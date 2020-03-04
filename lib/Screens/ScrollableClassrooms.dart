import 'package:flutter/material.dart';
import 'package:loginmodule/Services/Auth.dart';
import  'package:loginmodule/Screens/GoogleSignUp.dart';

class ScrollableClassroom extends StatefulWidget {
  @override
  _ScrollableClassroomState createState() => _ScrollableClassroomState();
}

class _ScrollableClassroomState extends State<ScrollableClassroom> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Osztályok"),
          leading:  Padding(padding: const EdgeInsets.only(left:5.0),
          child: IconButton(
              icon: Icon(Icons.exit_to_app,
                          color: Colors.black38),
              onPressed: (){
                authService.signOut();
                authService.loggedIn = false;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => GoogleSignUp()));


              }
                )
          ),
        actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Row(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.add_circle_outline,
                        color: Colors.black38), onPressed: null
                    ),
                    IconButton(icon: Icon(Icons.search,
                        color: Colors.black38), onPressed: null
                    ),


                  ],
                )
            ),
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            //TODO: Read Firestore data
           ]
        ),
      ),
    );
  }
}
