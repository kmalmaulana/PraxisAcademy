# Start With Flutter
### Run Hello World App

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```
Here is the result :

<img src="images/startflutter1.png" width="130">
### Use External Package

Step :
    - The pubspec file manages the assets and dependencies for  a Flutter app. In pubspec.yaml, add english_words (3.1.0 or higher) to the dependencies list:
    - Tap *Package Get*
    - Import new Package
    - Replace hello word to to use package with this code
```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); //Add this line uto use english word package
    return MaterialApp(
      title: 'Welcome to Flutter',
```
    - Here is the result :

### Add Stateful Widget
Stateless widgets are immutable, meaning that their properties can’t change—all values are final.

Stateful widgets maintain state that might change during the lifetime of the widget. Implementing a stateful widget requires at least two classes: 1) a StatefulWidget class that creates an instance of 2) a State class. The StatefulWidget class is, itself, immutable, but the State class persists over the lifetime of the widget.

    - Create a minimal state class. Add the following to the bottom of main.dart:
    - Add the stateful RandomWords widget to main.dart. The RandomWords widget does little else beside creating its State class:
    - Add the build() method to RandomWordsState:
    - Remove the word generation code from MyApp by making the changes shown in the following diff:
    - Restart App yeah

### Create an Infinite Scrolling ListView
    - Add a _suggestions list to the RandomWordsState class for saving suggested word pairings. Also, add a _biggerFont variable for making the font size larger.
    - Add a _buildSuggestions() function to the RandomWordsState class:
    - Add a _buildRow() function to RandomWordsState:
    - In the RandomWordsState class, update the build() method to use _buildSuggestions(), rather than directly calling the word generation library. (Scaffold implements the basic Material Design visual layout.) Replace the method body with the highlighted code:
    - In the MyApp class, update the build() method by changing the title, and changing the home to be a RandomWords widget:
    - Restart app yeah
