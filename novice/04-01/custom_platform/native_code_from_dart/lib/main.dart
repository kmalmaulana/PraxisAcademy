import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const platform = const MethodChannel('flutter.native/helper');

  String response = "";
//  try {
//  final String result = await  platform.invokeMethod('helloFromNativeCode');
//  response = result;
//  } on PlatformException; catch (e) {
//  response = "Failed to Invoke: '${e.message}'.";
//  }

//  try {
//    final String result = await platform.invokeMethod('helloFromNativeCode');
//    response = result;
//  } on PlatformException catch (e){
//    response ="Failed to invoke: '${e.message}'.";
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
