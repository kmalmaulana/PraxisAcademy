import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//Material App
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(child: Pavlova()),
      ),
    );
  }
}

//Non-Material App
class MyNonMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text(
          'Hello World',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}

// Lay out multiple widgets vertically and horizontally

class ColumnRow extends StatelessWidget {
  final imagewidth = 40.0;
  final imageheight = 40.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Image.asset(
            'images/car2.png',
            width: imagewidth,
            height: imageheight,
          ),
        ),
        Expanded(
          child: Image.asset(
            'images/car3.png',
            width: imagewidth,
            height: imagewidth,
          ),
        ),
        Expanded(
          child: Image.asset(
            'images/acr1.png',
            width: imagewidth,
            height: imagewidth,
          ),
        ),
      ],
    );
  }
}

class SecondRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.star, color: Colors.green[100]),
        Icon(Icons.star, color: Colors.green[200]),
        Icon(Icons.star, color: Colors.green[300]),
        Icon(Icons.star),
        Icon(Icons.star),
      ],
    );
  }
}

//Nesting rows & columns
class Pavlova extends StatelessWidget {
  final descriptions =
      'Pavlova is a meriague-based dessert named after the Russian ballerian Anua Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit abd whipped ercam.';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            'Strawberry Pavlova',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              descriptions,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Roboto',
                letterSpacing: 0.25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SecondRow(),
                  Text(
                    '170 Reviews',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.5,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.fastfood),
                  Text('Prep:'),
                  Text('25 Minute'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.fastfood),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Prep:',
                    ),
                  ),
                  Text('25 Minute'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.fastfood,
                  ),
                  Text('Prep:'),
                  Text('25 Minute'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
