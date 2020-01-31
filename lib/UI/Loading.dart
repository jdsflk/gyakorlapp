import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loginmodule/Screens/ScrollableClassrooms.dart';
import 'package:loginmodule/Services/Auth.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    if(authService.loggedIn){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ScrollableClassroom())
      );
    };
    return Center(
      child: Container(
        color: Colors.black,
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
