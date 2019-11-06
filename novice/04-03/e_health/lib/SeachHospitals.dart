import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class SearchHospitals extends StatefulWidget {
  @override
  _SearchHospitals createState() => _SearchHospitals();
}

class _SearchHospitals extends State<SearchHospitals> {
  final dio = new Dio();
  Widget _appTitle = new Text("Seacrch Hospital");
  Icon _searchIcon = new Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Material(
                color: Colors.white,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(15.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: rs1("Rs. Jogja International Hospital"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Material(
                color: Colors.white,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(15.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: rs1("Rs. Sardjito"),
                    ),
//                      Container(
//                        child: ClipRect(
//                          borderRadius: new BorderRadius.circular(24.0),
//                          child: Image(image: NetworkImage(url)),
//                        ),
//                      ),
                    RaisedButton(
                      child: Text("Rock & Roll"),
//                      onPressed: _changeText,
                      color: Colors.red,
                      textColor: Colors.yellow,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      splashColor: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Material(
                color: Colors.white,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(15.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        RaisedButton(
                          child: Text("Rock & Roll"),
//                      onPressed: _changeText,
                          color: Colors.red,
                          textColor: Colors.yellow,
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          splashColor: Colors.grey,
                        ),
                        Container(
                          margin: EdgeInsets.all(10.0),
                          child: rs1("Rs. Panti Rapi"),
                        ),
                      ],
                    ),
//                    RaisedButton(
//                      child: Text("Rock & Roll"),
////                      onPressed: _changeText,
//                      color: Colors.red,
//                      textColor: Colors.yellow,
//                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//                      splashColor: Colors.grey,
//                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget rs1(String title) {
    return Column(
      children: <Widget>[
        Text(title),
      ],
    );
  }
}

//Widget rs2() {
//  return Column(
//    children: <Widget>[
//      Text(),
//    ],
//  );
//}

/*Widget rs3() {
  return Column(
    children: <Widget>[
      Text(),
    ],
  );
}*/
