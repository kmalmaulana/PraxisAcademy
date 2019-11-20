// import 'dart:convert';

import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Load JSON App"),
      ),
      body: Container(
        child: Center(
          child: new FutureBuilder(
            //For loadig file
            future: DefaultAssetBundle.of(context)
                .loadString('load_json/person.json'),
            builder: (context, snapshot) {
              var mydata = jsonDecode(snapshot.data.toString());

              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text("Name: " + mydata[index]['name']),
                          Text("Age: " + mydata[index]['age']),
                          Text("Height: " + mydata[index]['height']),
                          Text("Hair Color: " + mydata[index]['hair_color']),
                          Text("Gender: " + mydata[index]['gender']),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: mydata == null ? 0 : mydata.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
