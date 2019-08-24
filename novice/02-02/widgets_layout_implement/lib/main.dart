//Package for material dart ok
import 'package:flutter/material.dart';

void main() {
  //runApp function
  runApp(new MaterialApp(
    home: new homePage(),
  ));
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new Container(
          //box
          width: 200.0,
          height: 100.0,
          color: Colors.yellow,
          child: new Center(
            child: new Text(
              'this is Home Page',
              style: new TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
