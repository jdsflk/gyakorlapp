import 'package:flutter/material.dart';
import 'package:loginmodule/Screens/GoogleSignUp.dart';
import 'package:loginmodule/Screens/InClassroom.dart';
import 'package:loginmodule/Screens/KahootQuestion.dart';
import 'package:loginmodule/Screens/ScrollableClassrooms.dart';
import 'package:loginmodule/Screens/Valaszolo.dart';

void main(){
  runApp(MaterialApp(
      title: 'Login App',
      home: GoogleSignUp()
  ),
  );
}