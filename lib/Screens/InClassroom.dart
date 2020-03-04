import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loginmodule/Screens/KahootQuestion.dart';
import 'package:loginmodule/Screens/rdhvtjzbku.dart';


import 'Valaszolo.dart';

final databaseReference = Firestore.instance.collection("classrooms");

String _csempe(BuildContext context, DocumentSnapshot snap) {
  return snap["Name"];
}

void display(qId, context) {
  var v = Firestore.instance.collection("questions").snapshots();
}

//THX Atul Sharma
void getData() {
  databaseReference.getDocuments().then((QuerySnapshot snapshot) {
    snapshot.documents.forEach((f) => print('${f.data["Name"]}}'));
  });
}

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
        title: StreamBuilder(
          stream: Firestore.instance
              .collection("classrooms")
              .document("BHxhqtvZnSseth0tdVR2")
              .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Text("Loading");
            }
            return Text(_csempe(context, snapshot.data));
          },
        ),
        leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: IconButton(
                icon: Icon(Icons.add_circle_outline),
                color: Colors.white70,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => KahootQuestion()));
                })),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                  icon: Icon(Icons.play_arrow),
                  color: Colors.white70,
                  onPressed: () {
                    display("EjXbMNXX01HlxsB1vF2F", context);
                  }))
        ],
      ),
    );
  }
}
