# Packages & Plugins
## Using Package

Set configuration in pubspec.yaml

```dart
dependencies:
  flutter:
    sdk: flutter
  css_colors: ^1.0.0// this is the package
```
Using the css_color package

```dart
import 'package:css_colors/css_colors.dart';
import 'package:flutter/material.dart';

 ***

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: CSSColors.orange,
    ));
  }
}
```

another package *launcher*, config pubspec.yaml
```dart
dependencies:
  flutter:
    sdk: flutter
  css_colors: ^1.0.0
  url_launcher: ^5.1.2
```

apply the package :

```dart
class DemoPage extends StatelessWidget {
  launchURL() {
    launch('https://flutter.dev');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          color: CSSColors.orange,
          onPressed: launchURL,
          child: Text('Show flutter homepage'),
        ),
      ),
    );
  }
}
```
