//Package for material dart ok
import 'package:flutter/material.dart';

void main() {
  //runApp function
  runApp(new MaterialApp(
    title: "Artic",
    home: new homePage(),
  ));
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: new Icon(
            IconData(
              59530,
              fontFamily: 'MaterialIcons',
            ),
            color: Colors.black),
        title: new Center(
          child: new Text(
            "Artic",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: <Widget>[
          new Icon(
              IconData(
                59574,
                fontFamily: 'MaterialIcons',
              ),
              color: Colors.black)
        ],
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Icon(IconData(57671, fontFamily: 'MaterialIcons'),
                    size: 40.0, color: Colors.black),
                new Icon(IconData(58430, fontFamily: 'MaterialIcons'),
                    size: 40.0, color: Colors.black),
                new Icon(
                  IconData(57673, fontFamily: 'MaterialIcons'),
                  size: 40.0,
                  color: Colors.black,
                ),
              ],
            ),
            new Icon(IconData(58430, fontFamily: 'MaterialIcons'),
                size: 40.0, color: Colors.black),
            new Row(
              children: <Widget>[
                new Icon(
                  IconData(57673, fontFamily: 'MaterialIcons'),
                  size: 40.0,
                  color: Colors.black,
                ),
                new Icon(
                  IconData(58430, fontFamily: 'MaterialIcons'),
                  size: 40.0,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

////59485
//57673 58430 57671
