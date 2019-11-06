import 'package:css_colors/css_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';
import 'dart:developer' as developer;

void main() {
  runApp(MyApp());

  String name = 'Kun';
  String city = 'New York';
  developer.log('log me', name: 'my.app');
  developer.log('name :$name ');
  developer.log('city : $city');
  developer.log('log me', name: 'my.app');

  var dd = new DemoPage();
  dd.test();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  launchURL() {
    launch('https://flutter.dev');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              color: CSSColors.orange,
              onPressed: launchURL,
              child: Text('Show flutter homepage'),
            ),
            RaisedButton(
              color: CSSColors.yellow,
              child: Text('Text0'),
//              onPressed: TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }

  void changeText() {
    var Text1 = 'Text1';
  }

  void test() {
    stderr.writeln('print me');
  }
}
