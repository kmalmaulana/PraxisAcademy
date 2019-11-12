import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: Counter(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          title: Text('Example title'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ),
        // body is the majority of the screen.
        body: Center(
          child: Text('Hello, world!'),
        ),
        floatingActionButton: FloatingActionButton(
            tooltip: 'Add', // used by assistive technologies
            child: Icon(Icons.add),
            onPressed: null));
  }
}

//Handling Gesture
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('My Button was tapped!');
      },
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}

// Changing widgets in response to input
class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text('Increment'),
    );
  }
}

class CounterDecrementor extends StatelessWidget {
  CounterDecrementor({this.onPressedDec});

  final VoidCallback onPressedDec;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressedDec,
      child: Text('Decrement'),
    );
  }
}

class Manipulate extends StatelessWidget {
  Manipulate({this.setManipulate});

  final VoidCallback setManipulate;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: setManipulate,
      child: Text('Manipulate'),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  void _decrement() {
    setState(() {
      --_counter;
    });
  }

  void _manipulateh() {
    setState(() {
      ++_counter;
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          CounterIncrementor(onPressed: _increment),
          CounterDecrementor(
            onPressedDec: _decrement,
          ),
          Manipulate(setManipulate: _manipulateh),
          CounterDisplay(count: _counter),
        ],
      ),
    );
  }
}
