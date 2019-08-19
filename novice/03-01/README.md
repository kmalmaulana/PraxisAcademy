# State Mangement

### 

### Bloc Library
Block library is the best way to do the management state in Flutter. State in, state out, and data flows has to be predictable this way.

To get started with the Bloc library, you technically only need to add it to the pubspec.yaml file. There is another Dart package which fits just perfectly with Bloc, and that is Equatable (from the author of the Bloc library). Its role is to simplify value comparisons in Dart, since originally, Dart supports only referential equality.

```dart
...
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^0.15.1
  equatable: ^0.2.6
...
```

Schenario : We will work with the two Text widgets which display the searched for city and its temperature. Finally, we will use the CityInputField's TextField to obtain the city name from the user, for which we will perform the fake "search" - just randomly generate a temperature.




