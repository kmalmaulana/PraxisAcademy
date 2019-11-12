import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

final ThemeData themeData = ThemeData(
  canvasColor: Colors.lightGreenAccent,
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.push(context, PageTwo());
          },
          child: Text('Move tp page: 2'),
        ),
      ),
    );
  }
}

class PageTwo extends MaterialPageRoute<Null> {
  PageTwo()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).canvasColor,
              elevation: 1.0,
            ),
            body: Center(),
          );
        });
}
