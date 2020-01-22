import 'package:flutter/material.dart';

class InClassRoom extends StatefulWidget {
  @override
  _InClassRoomState createState() => _InClassRoomState();
}

class _InClassRoomState extends State<InClassRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("A Classroom neve"), //TODO: read Firestore data
        leading:Padding(
            padding: const EdgeInsets.only(left: 10.0), child: IconButton(icon: Icon(Icons.add), onPressed: null)),
        actions: <Widget>[
      Padding(
      padding: const EdgeInsets.only(right: 10.0),
          child: IconButton(icon: Icon(Icons.play_arrow), onPressed: null)
      ) ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
