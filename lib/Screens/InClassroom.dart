import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loginmodule/Screens/KahootQuestion.dart';
import 'package:rxdart/rxdart.dart';

import 'Valaszolo.dart';

final databaseReference = Firestore.instance.collection("questions");
var data = new Map<String, dynamic>();

//Ebben tároljuk a Firestoreból érkező kérdéseket.
List adatok = [];
List quest = [];
List jo = [];
List ros1 = [];
List ros2 = [];
List ros3 = [];


String _title(BuildContext context, DocumentSnapshot snap) {
  return snap["Name"];
}

Future<void> getData() async{
  QuerySnapshot snapshot = await databaseReference.getDocuments();
    snapshot.documents.forEach((f){
      data = f.data;
      adatok.add(data);
        }
  );
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
            return Text(_title(context, snapshot.data));
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
                  onPressed: () async{
                    await getData();
                    print(adatok.length);
                    for(int k = 0; k < adatok.length; k++){
                   // print(adatok[k]);
                    int x=0;
                   var splitted = adatok[k].toString().substring(1, adatok[k].toString().length-1).split(",");
                    for(int i = 0; i < splitted.length; i++){
                      splitted[i] = splitted[i].split(":")[1].toString();
                      //print(splitted[i]);
                      if (x==0){
                        ros1.add(splitted[i]);
                      }
                      if (x==1){
                        ros2.add(splitted[i]);
                      }
                      if (x==2){
                        ros3.add(splitted[i]);
                      }
                      if (x==3){
                        quest.add(splitted[i]);
                      }
                      if (x==4){
                        jo.add(splitted[i]);
                        x=0;
                      }
                      x++;

                    }

                    }
                    print(ros1);
                    print(ros2);
                    print(ros3);
                    print(jo);
                    print(quest);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Valaszolo());
                    }
                  )
          )
        ],
      ),
    );
  }
}
