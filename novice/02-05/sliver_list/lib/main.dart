import 'package:flutter/material.dart';

void main() => runApp(CustomScrollViewExample());

class CustomScrollViewExample extends StatefulWidget {
  @override
  _CustomScrollViewExampleState createState() =>
      _CustomScrollViewExampleState();
}

class _CustomScrollViewExampleState extends State<CustomScrollViewExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CustomScrollView Tutorial by Woolha.com',
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text('SliverAppBar'),
              backgroundColor: Colors.red,
              expandedHeight: 200.0,
              pinned: false,
              floating: true,
              snap: false,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      //  return SliverAppBar().
                    });
                  },
                )
              ],
              // flexibleSpace: FlexibleSpaceBar(
              //     background: Image.asset(
              //   'images/airmax.png',
              //   fit: BoxFit.cover,
              // )),
            ),
            SliverAppBar(
              title: Text('SliverAppBar 2'),
              backgroundColor: Colors.red,
              expandedHeight: 200.0,
              pinned: false,
              floating: true,
              snap: true,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      //  return SliverAppBar().
                    });
                  },
                )
              ],
              // flexibleSpace: FlexibleSpaceBar(
              //     background: Image.asset(
              //   'images/airmax.png',
              //   fit: BoxFit.cover,
              // )),
            ),
            SliverFixedExtentList(
              itemExtent: 150.0,
              delegate: SliverChildListDelegate(
                [
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  child: Image.asset('images/nike1.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Text('AirMax',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  child: Image.asset('images/nike2.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Text('AirMax',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  child: Image.asset('images/nike3.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Text('AirMax',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  child: Image.asset('images/nike4.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Text('AirMax',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  child: Image.asset('images/nike5.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Text('AirMax',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  child: Image.asset('images/nike6.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Text('AirMax',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  child: Image.asset('images/nike7.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Text('AirMax',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  child: Image.asset('images/nike8.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Text('AirMax',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(color: Colors.purple),
                  Container(color: Colors.green),
                  Container(color: Colors.orange),
                  Container(color: Colors.yellow),
                  Container(color: Colors.pink),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
              ),
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return new Container(
                  color: _randomColor(index),
                  height: 200.0,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

Color _randomColor(int index) {
  if (index % 3 == 0) {
    return Colors.pink;
  } else if (index % 3 == 1) {
    return Colors.blueAccent;
  }
  return Colors.amber;
}
