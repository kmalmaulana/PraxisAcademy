import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/profilpic1.jpg"),
              ),
              Text(
                "Akmal Maulana",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Yogyakarta",
                style: TextStyle(
                    fontSize: 30.0, color: Colors.black, letterSpacing: 2.5),
              ),
              Container(
                  child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.indigoAccent,
                        ),
                        Column(
                          children: <Widget>[Text("Age"), Text("23")],
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.indigoAccent,
                        ),
                        Column(
                          children: <Widget>[Text("Blood"), Text("B")],
                        ),
                      ],
                    ),
                  ],

//                  child: Row(
////                  crossAxisAlignment: CrossAxisAlignment.center,
//                    children: <Widget>[
//                      CircleAvatar(
//                        radius: 20,
//                        backgroundColor: Colors.blue,
//                      ),
//                      Column(
//                        children: <Widget>[
//                          Text(
//                            "Age",
//                          ),
//                          Text("23"),
//                        ],
//                      ),
//                    ],
//                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
