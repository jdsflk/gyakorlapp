import 'package:flutter/material.dart';

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
          leading: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: IconButton(icon: Icon(Icons.create), onPressed: null
              )
          ),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(icon: Icon(Icons.search), onPressed: null
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
