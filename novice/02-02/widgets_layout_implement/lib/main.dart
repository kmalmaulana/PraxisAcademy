//Package for material dart ok
import 'package:flutter/material.dart';

void main() {
  //runApp function
  runApp(
      //Center is a widget with child as a widget to
      //Center widget means that text 'Hello widget' will end in the center of screen
      Center(
    child: Text(
      'Helo widget nice to meet you again, I thought you were not gonna comeback',
      //TextDirection.ltr means left-to-right
      // must have textDirection in every Text Widget ???
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.yellowAccent, fontWeight: FontWeight.bold),
    ),
  ));
}
